.class public Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SoterKeyStoreKeyPairRSAGeneratorSpi.java"


# static fields
.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field public static final UINT32_MAX_VALUE:J = 0xffffffffL

.field private static final UINT32_RANGE:J = 0x100000000L

.field public static final UINT64_MAX_VALUE:Ljava/math/BigInteger;

.field private static final UINT64_RANGE:Ljava/math/BigInteger;

.field private static volatile sRng:Ljava/security/SecureRandom;


# instance fields
.field private isAutoAddCounterWhenGetPublicKey:Z

.field private isAutoSignedWithAttkWhenGetPublicKey:Z

.field private isAutoSignedWithCommonkWhenGetPublicKey:Z

.field private isForSoter:Z

.field private isNeedNextAttk:Z

.field private isSecmsgFidCounterSignedWhenSign:Z

.field private mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

.field private mEncryptionAtRestRequired:Z

.field private mEntryAlias:Ljava/lang/String;

.field private mJcaKeyAlgorithm:Ljava/lang/String;

.field private mKeySizeBits:I

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private mKeymasterDigests:[I

.field private mKeymasterEncryptionPaddings:[I

.field private mKeymasterPurposes:[I

.field private mKeymasterSignaturePaddings:[I

.field private final mOriginalKeymasterAlgorithm:I

.field private mRSAPublicExponent:Ljava/math/BigInteger;

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 708
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    .line 709
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 114
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    .line 116
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 118
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 120
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    .line 124
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    .line 126
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    .line 129
    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    .line 435
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    const v1, 0x500000c8

    .line 436
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 440
    :cond_0
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    if-eqz v0, :cond_1

    .line 441
    const v0, 0x70002af8

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 442
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    int-to-long v0, v0

    const v2, 0x30002aff

    invoke-virtual {p1, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 445
    :cond_1
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    if-eqz v0, :cond_2

    .line 446
    const v0, 0x70002af9

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 449
    :cond_2
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    if-eqz v0, :cond_3

    .line 450
    const v0, 0x70002afa

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 452
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v1, -0x6fffd505

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 458
    :cond_3
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    if-eqz v0, :cond_4

    .line 459
    const v0, 0x70002afc

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 463
    :cond_4
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    if-eqz v0, :cond_5

    .line 464
    const v0, 0x70002afd

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 467
    :cond_5
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    if-eqz v0, :cond_6

    .line 468
    const v0, 0x70002afe

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 434
    :cond_6
    return-void
.end method

.method private static checkValidKeySize(II)V
    .locals 2
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 576
    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2000

    if-le p1, v0, :cond_1

    .line 577
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_1
    return-void
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 476
    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "generateSelfSignedCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    iget v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v2, v3, v4}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "signatureAlgorithm":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 481
    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "generateSelfSignedCertificateWithFakeSignature1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2

    .line 487
    :cond_0
    :try_start_0
    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "generateSelfSignedCertificateWithValidSignature"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 490
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "generateSelfSignedCertificateWithFakeSignature2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-direct {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 15
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v8, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    .line 531
    .local v8, "tbsGenerator":Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
    iget v10, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v10, :pswitch_data_0

    .line 546
    :pswitch_0
    new-instance v10, Ljava/security/ProviderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported key algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 533
    :pswitch_1
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 534
    .local v4, "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 535
    .local v3, "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 536
    .local v9, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 537
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 538
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v5

    .line 549
    .end local v9    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v5, "signature":[B
    :goto_0
    const/4 v11, 0x0

    const/4 v0, 0x0

    .local v0, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface/range {p1 .. p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 551
    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v1, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v10

    .line 550
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 552
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v11, :cond_4

    throw v11

    .line 541
    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "signature":[B
    :pswitch_2
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 542
    .restart local v4    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 543
    .restart local v3    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v10, 0x1

    new-array v5, v10, [B

    .restart local v5    # "signature":[B
    goto :goto_0

    .line 552
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v11

    goto :goto_1

    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_1
    move-exception v10

    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :goto_2
    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_3
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_4
    if-eqz v11, :cond_3

    throw v11

    :catch_2
    move-exception v12

    if-nez v11, :cond_2

    move-object v11, v12

    goto :goto_4

    :cond_2
    if-eq v11, v12, :cond_1

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v10

    .line 553
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :cond_4
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    .line 555
    new-instance v6, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v10, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    .line 556
    .local v6, "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 557
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 558
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 559
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 560
    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 561
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v7

    .line 563
    .local v7, "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 564
    .local v2, "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 565
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 566
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v10, v5}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 567
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v10

    .line 552
    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    .end local v7    # "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catchall_1
    move-exception v10

    goto :goto_3

    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v0, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    goto :goto_3

    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_3
    move-exception v10

    move-object v0, v1

    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    goto/16 :goto_2

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "signatureAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .line 514
    .local v0, "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 515
    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 516
    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 517
    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 518
    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 519
    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 520
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 739
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 740
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_0

    .line 741
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 742
    const-string/jumbo v2, "Failed to obtain application Context from ActivityThread"

    .line 741
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_0
    return-object v0
.end method

.method private static getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .param p0, "authorizedKeyDigests"    # [Ljava/lang/String;
    .param p1, "supportedSignatureDigests"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 669
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 670
    .local v0, "authorizedKeymasterKeyDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget v1, v6, v5

    .line 671
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "keymasterDigest":I
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 675
    .local v3, "supportedKeymasterSignatureDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    .line 674
    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget v1, v5, v4

    .line 676
    .restart local v1    # "keymasterDigest":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 678
    .end local v1    # "keymasterDigest":I
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 679
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 680
    return-object v2
.end method

.method private static getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .locals 12
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySizeBits"    # I
    .param p2, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 599
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_0

    .line 601
    return-object v10

    .line 603
    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 605
    return-object v10

    .line 607
    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v8

    if-nez v8, :cond_2

    .line 609
    return-object v10

    .line 618
    :cond_2
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v8

    .line 617
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    .line 619
    const/4 v9, 0x5

    .line 616
    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    .line 620
    .local v7, "pkcs1SignaturePaddingSupported":Z
    if-nez v7, :cond_3

    .line 622
    return-object v10

    .line 626
    :cond_3
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v8

    .line 627
    invoke-static {}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v9

    .line 625
    invoke-static {v8, v9}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 634
    .local v0, "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit16 v5, p1, -0xf0

    .line 635
    .local v5, "maxDigestOutputSizeBits":I
    const/4 v2, -0x1

    .line 636
    .local v2, "bestKeymasterDigest":I
    const/4 v1, -0x1

    .line 637
    .local v1, "bestDigestOutputSizeBits":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "keymasterDigest$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 638
    .local v3, "keymasterDigest":I
    invoke-static {v3}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getDigestOutputSizeBits(I)I

    move-result v6

    .line 639
    .local v6, "outputSizeBits":I
    if-gt v6, v5, :cond_4

    .line 643
    if-ne v2, v11, :cond_5

    .line 645
    move v2, v3

    .line 646
    move v1, v6

    goto :goto_0

    .line 649
    :cond_5
    if-le v6, v1, :cond_4

    .line 650
    move v2, v3

    .line 651
    move v1, v6

    goto :goto_0

    .line 655
    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_6
    if-ne v2, v11, :cond_7

    .line 656
    return-object v10

    .line 658
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 659
    const-string/jumbo v9, "WithRSA"

    .line 658
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static getDefaultKeySize(I)I
    .locals 1
    .param p0, "keymasterAlgorithm"    # I

    .prologue
    .line 571
    const/16 v0, 0x800

    return v0
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3
    .param p0, "keymasterDigest"    # I

    .prologue
    .line 684
    packed-switch p0, :pswitch_data_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 688
    :pswitch_1
    const/16 v0, 0x80

    return v0

    .line 690
    :pswitch_2
    const/16 v0, 0xa0

    return v0

    .line 692
    :pswitch_3
    const/16 v0, 0xe0

    return v0

    .line 694
    :pswitch_4
    const/16 v0, 0x100

    return v0

    .line 696
    :pswitch_5
    const/16 v0, 0x180

    return v0

    .line 698
    :pswitch_6
    const/16 v0, 0x200

    return v0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .locals 2
    .param p0, "rng"    # Ljava/security/SecureRandom;
    .param p1, "sizeBytes"    # I

    .prologue
    .line 412
    if-gtz p1, :cond_0

    .line 413
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v1

    .line 415
    :cond_0
    if-nez p0, :cond_1

    .line 416
    invoke-static {}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getRng()Ljava/security/SecureRandom;

    move-result-object p0

    .line 418
    :cond_1
    new-array v0, p1, [B

    .line 419
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 420
    return-object v0
.end method

.method private getRealKeyBlobByKeyName(Ljava/lang/String;)[B
    .locals 3
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 503
    const-string/jumbo v0, "Soter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start retrieve key blob by key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getRng()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    .line 429
    :cond_0
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 663
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-224"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-256"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-384"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-512"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method private initAlgorithmSpecificParameters()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 263
    .local v0, "algSpecificSpec":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    .line 264
    .local v1, "publicExponent":Ljava/math/BigInteger;
    instance-of v4, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 266
    nop

    nop

    .line 267
    .local v2, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    iget v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 268
    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v4

    iput v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 274
    :cond_0
    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 275
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 276
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RSA public exponent must be positive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_1
    iget v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 270
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RSA key size must match  between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 271
    iget-object v6, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 271
    const-string/jumbo v6, " and "

    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    const-string/jumbo v6, ": "

    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    iget v6, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    const-string/jumbo v6, " vs "

    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v6

    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_2
    sget-object v4, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_3

    .line 280
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported RSA public exponent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 282
    const-string/jumbo v6, ". Maximum supported value: "

    .line 281
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 282
    sget-object v6, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 281
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    .end local v2    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_3
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    .line 286
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/SoterUtil;->convertKeyNameToParameterSpec(Ljava/lang/String;)Landroid/security/keystore/SoterRSAKeyGenParameterSpec;

    move-result-object v3

    .line 287
    .local v3, "soterSpec":Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    if-eqz v3, :cond_4

    .line 288
    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    .line 289
    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 290
    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 291
    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->getAutoSignedKeyNameWhenGetPublicKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 292
    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    .line 293
    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    .line 294
    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    .line 261
    :cond_4
    return-void
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 748
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 749
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 750
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 751
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterPadding"    # I

    .prologue
    .line 725
    packed-switch p0, :pswitch_data_0

    .line 732
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 730
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private resetAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 232
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 233
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 235
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    .line 236
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    .line 237
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 238
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 239
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    .line 240
    iput v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 241
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 242
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    .line 243
    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    .line 244
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 245
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 246
    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    .line 248
    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 250
    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 252
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 254
    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    .line 256
    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    .line 258
    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    .line 231
    return-void
.end method

.method public static toUint64(J)Ljava/math/BigInteger;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 715
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 716
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 718
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 21

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v4, :cond_1

    .line 302
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v18, "Not initialized"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    .line 306
    .local v8, "flags":I
    :goto_0
    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_3

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v4

    sget-object v18, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_3

    .line 308
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 309
    const-string/jumbo v18, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    .line 308
    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    .end local v8    # "flags":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 313
    .restart local v8    # "flags":I
    :cond_3
    new-instance v6, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v6}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 314
    .local v6, "args":Landroid/security/keymaster/KeymasterArguments;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    int-to-long v0, v4

    move-wide/from16 v18, v0

    const v4, 0x30000003

    move-wide/from16 v0, v18

    invoke-virtual {v6, v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 315
    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    const v18, 0x10000002

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    const v18, 0x20000001

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    const v18, 0x20000004

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    const v18, 0x20000006

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    const v18, 0x20000006

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    const v18, 0x20000005

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v4

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 322
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v4, v0, v1, v2}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v4

    const v18, 0x60000190

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 328
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v4

    .line 329
    const v18, 0x60000191

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 332
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v4

    .line 333
    const v18, 0x60000192

    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 336
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    div-int/lit8 v18, v18, 0x8

    .line 339
    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v7

    .line 342
    .local v7, "additionalEntropy":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "USRPKEY_"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "privateKeyAlias":Ljava/lang/String;
    const/16 v17, 0x0

    .line 345
    .local v17, "success":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 346
    new-instance v9, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v9}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 347
    .local v9, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual/range {v4 .. v9}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v15

    .line 353
    .local v15, "errorCode":I
    const/4 v4, 0x1

    if-eq v15, v4, :cond_8

    .line 354
    new-instance v4, Ljava/security/ProviderException;

    .line 355
    const-string/jumbo v18, "Failed to generate key pair"

    invoke-static {v15}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v19

    .line 354
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v9    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v15    # "errorCode":I
    :catchall_0
    move-exception v4

    .line 398
    if-nez v17, :cond_7

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 397
    :cond_7
    throw v4

    .line 361
    .restart local v9    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v15    # "errorCode":I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 360
    invoke-static {v4, v5}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 366
    .local v16, "result":Ljava/security/KeyPair;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 367
    new-instance v4, Ljava/security/ProviderException;

    .line 368
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Generated key pair algorithm does not match requested algorithm: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 369
    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v19

    .line 368
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 369
    const-string/jumbo v19, " vs "

    .line 368
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 368
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 367
    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 362
    .end local v16    # "result":Ljava/security/KeyPair;
    :catch_0
    move-exception v13

    .line 363
    .local v13, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v18, "Failed to load generated key pair from keystore"

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v13}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    .end local v13    # "e":Ljava/security/UnrecoverableKeyException;
    .restart local v16    # "result":Ljava/security/KeyPair;
    :cond_9
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 381
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    :try_start_4
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 387
    .local v11, "certBytes":[B
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 388
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "USRCERT_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 390
    const/16 v19, -0x1

    .line 387
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v11, v1, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4

    if-nez v4, :cond_a

    .line 392
    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v18, "Failed to store self-signed certificate"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 375
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certBytes":[B
    :catch_1
    move-exception v12

    .line 376
    .local v12, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v18, "Failed to generate self-signed certificate"

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 382
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v14

    .line 383
    .local v14, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/security/ProviderException;

    .line 384
    const-string/jumbo v18, "Failed to obtain encoded form of self-signed certificate"

    .line 383
    move-object/from16 v0, v18

    invoke-direct {v4, v0, v14}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 395
    .end local v14    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v11    # "certBytes":[B
    :cond_a
    const/16 v17, 0x1

    .line 398
    if-nez v17, :cond_b

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 396
    :cond_b
    return-object v16
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " required to initialize this KeyPairGenerator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 12
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 142
    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    .line 144
    const/4 v6, 0x0

    .line 146
    .local v6, "success":Z
    if-nez p1, :cond_1

    .line 147
    :try_start_0
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Must supply params of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 149
    const-string/jumbo v9, " or "

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 149
    const-class v9, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catchall_0
    move-exception v7

    .line 225
    if-nez v6, :cond_0

    .line 226
    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    .line 224
    :cond_0
    throw v7

    .line 154
    :cond_1
    :try_start_1
    iget v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    .line 155
    .local v3, "keymasterAlgorithm":I
    instance-of v8, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v8, :cond_3

    .line 156
    move-object v0, p1

    nop

    nop

    move-object v5, v0

    .line 164
    .local v5, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/keystore/SoterUtil;->getPureKeyAliasFromKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 165
    iput-object v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 166
    iput v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 153
    const/4 v8, 0x0

    .line 167
    iput-boolean v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    .line 168
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v8

    iput v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 169
    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->initAlgorithmSpecificParameters()V

    .line 170
    iget v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 171
    invoke-static {v3}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getDefaultKeySize(I)I

    move-result v8

    iput v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 173
    :cond_2
    iget v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-static {v3, v8}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->checkValidKeySize(II)V

    .line 175
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    .line 176
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v8, "KeyStore entry alias not provided"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 158
    .end local v5    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_3
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported params class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 160
    const-string/jumbo v9, ". Supported: "

    .line 159
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 160
    const-class v9, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 159
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 161
    const-string/jumbo v9, ", "

    .line 159
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 161
    const-class v9, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 159
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 158
    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .restart local v5    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_4
    :try_start_2
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v8

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v8

    iput-object v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    .line 184
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    .line 186
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v8

    .line 185
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 187
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    .line 188
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v8

    .line 187
    if-eqz v8, :cond_6

    .line 189
    iget-object v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_6

    aget v4, v8, v7

    .line 190
    .local v4, "keymasterPadding":I
    invoke-static {v4}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 192
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 195
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v9

    .line 193
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 197
    const-string/jumbo v9, ". See "

    .line 193
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 197
    const-class v9, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 193
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 198
    const-string/jumbo v9, " documentation."

    .line 193
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    .end local v2    # "jcaKeyAlgorithm":Ljava/lang/String;
    .end local v4    # "keymasterPadding":I
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v7, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "jcaKeyAlgorithm":Ljava/lang/String;
    .restart local v4    # "keymasterPadding":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 203
    .end local v4    # "keymasterPadding":I
    :cond_6
    :try_start_4
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 204
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 205
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    .line 213
    :goto_1
    new-instance v7, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v7}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 214
    iget-object v8, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v8}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v8

    .line 215
    iget-object v9, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 213
    invoke-static {v7, v8, v9, v10, v11}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    :try_start_5
    iput-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 222
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    iput-object v7, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    const/4 v6, 0x1

    .line 225
    if-nez v6, :cond_7

    .line 226
    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    .line 141
    :cond_7
    return-void

    .line 207
    :cond_8
    :try_start_6
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    iput-object v7, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method
