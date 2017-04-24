.class public Landroid/content/pm/OemExtraPackageManager;
.super Ljava/lang/Object;
.source "OemExtraPackageManager.java"


# static fields
.field static final GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

.field static final TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-array v0, v4, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/pm/OemExtraPackageManager;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    .line 30
    new-array v0, v4, [[Landroid/content/pm/Signature;

    sget-object v1, Landroid/content/pm/OemExtraPackageManager;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/pm/OemExtraPackageManager;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 34
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 53
    :goto_0
    return v6

    .line 34
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 38
    :cond_1
    if-nez p1, :cond_2

    .line 39
    const/4 v6, -0x2

    goto :goto_0

    .line 41
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 42
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 43
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 46
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 47
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 51
    const/4 v6, 0x0

    goto :goto_0

    .line 53
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 3
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/OemExtraPackageManager;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 58
    sget-object v2, Landroid/content/pm/OemExtraPackageManager;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    aget-object v1, v2, v0

    .line 59
    .local v1, "sig":[Landroid/content/pm/Signature;
    invoke-static {v1, p0}, Landroid/content/pm/OemExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 64
    .end local v1    # "sig":[Landroid/content/pm/Signature;
    :goto_1
    return v2

    .line 57
    .restart local v1    # "sig":[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "sig":[Landroid/content/pm/Signature;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
