# git-file-history

Retrieve a file's commit history in Git.

# Usage

```lisp
CL-USER> (ql:quickload :git-file-history)
To load "git-file-history":
  Load 1 ASDF system:
    git-file-history
; Loading "git-file-history"
..................................................
[package git-file-history].
(:GIT-FILE-HISTORY)

CL-USER> (git-file-history:commits #p"/home/eudoxia/code/crane/" #p"/home/eudoxia/code/crane/README.md")
("c389025b66daef262ad364b17a91d7b0aaf22a3b"
 "0857a1272dfb5045755167a22d942c6f176abbca"
 "a8f7f62353ed78a49914359e4c9f3ca3e626ed43"
 "4a9791d404a7a31adceeb3c61858026b1bf2088c"
 "9d07f675f83ea5b8ce0c09ac0b009dd3d21ac2ec"
 "422dc093cc16b4d62b6a86bb37dfd0fb7bea1af4"
 "e1c4a4e72310b8b90f2bcefcf99932a1bef95c1e"
 "fd27d81c84f56daa607c42a5bbe784679c661a10"
 "e2f0f868ac02f7756aec75442fee6f0e2596e20a"
 "eb5202d7332c0cf5a3e363a047e7fe04330dc429"
 "cb29280ab2ed89834a84f5601d16497e59181e97"
 "b19a30dba73e8aacb4bbf01b25af168f7719e376"
 "b1c36ff4e2dd0550b03ddf0c07d8a1f87d81da4f"
 "7de0586d85d041f08ff90a628a3c4ad70246740b"
 "99de43bd2a4bb7c89d826644a72952e207c58d0f"
 "43d5f37938cddb7bf8fe1f2d25f3d0712d8bad8b"
 "5e51ac460f6727ccba626eb9aa57f6e1745c0fe9"
 "6c37312bdddaed4102ba2b63d65d986ec2eaa569"
 "b20f5d369d6629aadaaf4e824b769f529a18e23c"
 "0f3efeb9a828dc629a5e769cac759d83ce66a2f3"
 "635c9a8583d12ead7c04172e523063aec6ef64cb"
 "9d49b3a56b20637b59fcdcf2a329fb84a2e94455"
 "a06b44751047a75fd61b1176e1bfa15827e91381"
 "bd92decd26f0915cf3e94c59414e71dc0029cfce"
 "16e25b512b5912270ae09235156f852af54dfa35"
 "3d08bf940ff3f381cbbe83bc6c62a1a36886f3bc"
 "ca1c44284b41570136d047c05b8cf6254f74980c"
 "2f398f6cf55b5c3376a38f65effdce6d7d366873"
 "4180f944b1f893ef04436ef4e5faca53c03475f1"
 "d299e51b5ef17ac29c262a6b10da6bb8ba9d32ec")

CL-USER> (git-file-history:view-commit #p"/home/eudoxia/code/crane/" "cb29280ab2ed89834a84f5601d16497e59181e97")
(:NAME "Fernando Borretti"
 :EMAIL "eudoxiahp@gmail.com"
 :TIMESTAMP @2014-06-01T17:46:52.000000-03:00
 :SUMMARY "Add fixtures and inflation/deflation examples to README"
 :DESCRIPTION NIL)
```

# License

Copyright (c) 2016 Fernando Borretti

Licensed under the MIT License.
