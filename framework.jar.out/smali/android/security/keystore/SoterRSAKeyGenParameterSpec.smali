.class public Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
.super Ljava/security/spec/RSAKeyGenParameterSpec;
.source "SoterRSAKeyGenParameterSpec.java"


# instance fields
.field private isAutoAddCounterWhenGetPublicKey:Z

.field private isAutoSignedWithAttkWhenGetPublicKey:Z

.field private isAutoSignedWithCommonkWhenGetPublicKey:Z

.field private isForSoter:Z

.field private isNeedUseNextAttk:Z

.field private isSecmsgFidCounterSignedWhenSign:Z

.field private mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;ZZZLjava/lang/String;ZZZ)V
    .locals 2
    .param p1, "keysize"    # I
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "isForSoter"    # Z
    .param p4, "isAutoSignedWithAttkWhenGetPublicKey"    # Z
    .param p5, "isAutoSignedWithCommonkWhenGetPublicKey"    # Z
    .param p6, "signedKeyNameWhenGetPublicKey"    # Ljava/lang/String;
    .param p7, "isSecmsgFidCounterSignedWhenSign"    # Z
    .param p8, "isAutoAddCounterWhenGetPublicKey"    # Z
    .param p9, "isNeedNextAttk"    # Z

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 12
    iput-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    .line 13
    iput-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 14
    iput-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    .line 17
    iput-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    .line 18
    iput-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    .line 30
    iput-boolean p3, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    .line 31
    iput-boolean p4, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 32
    iput-boolean p5, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 33
    iput-object p6, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 34
    iput-boolean p7, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    .line 35
    iput-boolean p8, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    .line 36
    iput-boolean p9, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    .line 28
    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;ZZZ)V
    .locals 10
    .param p1, "isForSoter"    # Z
    .param p2, "isAutoSignedWithAttkWhenGetPublicKey"    # Z
    .param p3, "isAutoSignedWithCommonkWhenGetPublicKey"    # Z
    .param p4, "signedKeyNameWhenGetPublicKey"    # Ljava/lang/String;
    .param p5, "isSecmsgFidCounterSignedWhenSign"    # Z
    .param p6, "isAutoAddCounterWhenGetPubli"    # Z
    .param p7, "isNeedNextAttkcKey"    # Z

    .prologue
    .line 47
    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    const/16 v1, 0x800

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;ZZZLjava/lang/String;ZZZ)V

    .line 46
    return-void
.end method


# virtual methods
.method public getAutoSignedKeyNameWhenGetPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoAddCounterWhenGetPublicKey()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    return v0
.end method

.method public isAutoSignedWithAttkWhenGetPublicKey()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    return v0
.end method

.method public isAutoSignedWithCommonkWhenGetPublicKey()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    return v0
.end method

.method public isForSoter()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    return v0
.end method

.method public isNeedUseNextAttk()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    return v0
.end method

.method public isSecmsgFidCounterSignedWhenSign()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    return v0
.end method

.method public setAutoSignedKeyNameWhenGetPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAutoSignedKeyNameWhenGetPublicKey"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setIsAutoAddCounterWhenGetPublicKey(Z)V
    .locals 0
    .param p1, "isAutoAddCounterWhenGetPublicKey"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    .line 97
    return-void
.end method

.method public setIsAutoSignedWithAttkWhenGetPublicKey(Z)V
    .locals 0
    .param p1, "isAutoSignedWithAttkWhenGetPublicKey"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 65
    return-void
.end method

.method public setIsAutoSignedWithCommonkWhenGetPublicKey(Z)V
    .locals 0
    .param p1, "isAutoSignedWithCommonkWhenGetPublicKey"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 73
    return-void
.end method

.method public setIsForSoter(Z)V
    .locals 0
    .param p1, "isForSoter"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    .line 57
    return-void
.end method

.method public setIsNeedUseNextAttk(Z)V
    .locals 0
    .param p1, "isNeedUseNextAttk"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    .line 105
    return-void
.end method

.method public setIsSecmsgFidCounterSignedWhenSign(Z)V
    .locals 0
    .param p1, "isSecmsgFidCounterSignedWhenSign"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SoterRSAKeyGenParameterSpec{isForSoter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string/jumbo v1, ", isAutoSignedWithAttkWhenGetPublicKey="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string/jumbo v1, ", isAutoSignedWithCommonkWhenGetPublicKey="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string/jumbo v1, ", mAutoSignedKeyNameWhenGetPublicKey=\'"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    iget-object v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const/16 v1, 0x27

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, ", isSecmsgFidCounterSignedWhenSign="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, ", isAutoAddCounterWhenGetPublicKey="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ", isNeedUseNextAttk="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const/16 v1, 0x7d

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
