# Obnam docker image

This image contains the obnam tools to make backup.

By default, it will backup ``/obnam/source`` to
``/obname/destination``.

# Usage

The idea is to use volume to be able to backup a folder using
obnam. It can be used to backup locally (at least folder to folder) or
with sftp.

* To backup locally, we will mount ``/obnam/source`` and
   ``/obname/destination`` to the right host folder. Let's mount the
   source as *read-only* to be sure it does not get messed up.

```bash
$ docker run -ti --rm \
  -v /folder/to/backup:/obnam/source:ro \
  -v /backup/destination:/obnam/destination \
  vdemeester/obnam
```

* To backup using ``sftp``, we will need to pass an argument to the
   image, and probably the ``$HOME/.ssh`` folder to be able to use ssh keys.

```bash
$ docker run -ti --rm \
  -v $HOME/.ssh/:/home/user/.ssh/:ro \
  -v /folder/to/backup:/obnam/source:ro \
  vdemeester/obnam sftp://backup.host/backup/destination
```
