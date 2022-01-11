# Syncing an archive node from a backup 

Downloading a full copy of the archive data is a little bit more involved than Polkashots, where snapshots are compressed into a single file. From our experience with other chains, we decided against compressing the database, as we have found decompression times can take as long or longer than the actual download time itself. Also, since the chain data is already relatively compact, compression offers marginal benefit vs offering uncompressed copies.

As we are now downloading many files instead of just one big zip file, this requires us to use a little bit of special tooling to simplify the process. Download targets are provided in a manifest file which is updated several times a day with the latest chain data. To download the entire database, we recommend using a tool called aria2, which allows for multiple simultaneous downloads against the manifest file, resumption of interrupted downloads, on top of other useful features.

To use aria2, you just need to provide the options of the output folder location (-d) and the input file either from a previously downloaded copy of the manifest or by piping from cURL.
For example, if your Polkadot client is configured to use the base path of `/data`, the database files would be stored at `/data/chains/polkadot/db/full/`, which is where we will want the files. We can then download the manifest and the files in one command:

```shell
curl -s https://substrate.archive.aws.geometry.io/polkadot_manifest.txt | aria2c -d /data/chains/polkadot/db/full/ -i -
```

Here we are downloading the manifest with cURL, piping to aria2 (the `-i` — tells aria2 to read from stdin), and to download all of the files to `/data/chains/polkadot/db/full/`.

The one important thing to note is that each manifest has a window during which it is valid. If you try to download the database using that manifest outside of that window, you may have an inconsistency. The window is given at the top of the manifest and looks like this:

```text
#VALID FROM 2021-12-01T00:00:00+00:00 TO 2021-12-01T06:00:00+00:00
```

If you find your download spans a valid window, most likely because of download errors from aria2, you can finish the download normally and then refresh the files by downloading a fresh copy of the manifest and catching any files you missed. This window is a consequence of the CloudFront caching, which isn’t ideal, but allows smaller file diffs overall.

The last thing you’ll need to do, as a quirk from the way RocksDB works, is to ensure the value in the CURRENT file matches the latest MANIFEST-* file you have. You can manually do this by checking which MANIFEST-* file you have, but you can also use a little bit of bash magic. To get the main DB:

```ls /path/to/db/files/MANIFEST* | xargs -n 1 basename > /path/to/db/files/CURRENT```

To get the parachains DB:

```ls /path/to/db/files/parachains/db/MANIFEST* | xargs -n 1 basename > /path/to/db/files/parachains/db/CURRENT```

Just be sure to change `/path/to/db/files/` with whatever is appropriate for your configuration.
Now you’re all set to start up the binary for the network of your choice!

Please let us know of any issues and give us feedback by leaving an issue in our [meta repo](https://github.com/geometry-labs/substrate-meta).

Manifest download links:
[https://substrate.archive.aws.geometry.io/kusama_manifest.txt](https://substrate.archive.aws.geometry.io/kusama_manifest.txt)
[https://substrate.archive.aws.geometry.io/polkadot_manifest.txt](https://substrate.archive.aws.geometry.io/polkadot_manifest.txt)
