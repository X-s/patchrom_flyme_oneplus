.class public Lcom/oneplus/threekey/ThreeKey;
.super Lcom/oneplus/threekey/ThreeKeyBase;
.source "ThreeKey.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ThreeKey"


# instance fields
.field private mPolicys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oem/os/IThreeKeyPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/threekey/ThreeKeyBase;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 3
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 54
    const-string v0, "ThreeKey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addThreeKeyPolicy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public init(I)V
    .locals 3
    .param p1, "switchState"    # I

    .prologue
    .line 68
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oem/os/IThreeKeyPolicy;

    .line 70
    .local v1, "policy":Lcom/oem/os/IThreeKeyPolicy;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Lcom/oem/os/IThreeKeyPolicy;->setInitMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    goto :goto_0

    .line 75
    .end local v1    # "policy":Lcom/oem/os/IThreeKeyPolicy;
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/threekey/ThreeKeyBase;->init(I)V

    .line 77
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oem/os/IThreeKeyPolicy;

    .line 79
    .restart local v1    # "policy":Lcom/oem/os/IThreeKeyPolicy;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, v2}, Lcom/oem/os/IThreeKeyPolicy;->setInitMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 80
    :catch_1
    move-exception v2

    goto :goto_1

    .line 84
    .end local v1    # "policy":Lcom/oem/os/IThreeKeyPolicy;
    :cond_1
    return-void
.end method

.method public removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 1
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method protected setDown()V
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oem/os/IThreeKeyPolicy;

    .line 46
    .local v1, "policy":Lcom/oem/os/IThreeKeyPolicy;
    :try_start_0
    invoke-interface {v1}, Lcom/oem/os/IThreeKeyPolicy;->setDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    goto :goto_0

    .line 50
    .end local v1    # "policy":Lcom/oem/os/IThreeKeyPolicy;
    :cond_0
    return-void
.end method

.method protected setMiddle()V
    .locals 3

    .prologue
    .line 34
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oem/os/IThreeKeyPolicy;

    .line 36
    .local v1, "policy":Lcom/oem/os/IThreeKeyPolicy;
    :try_start_0
    invoke-interface {v1}, Lcom/oem/os/IThreeKeyPolicy;->setMiddle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    goto :goto_0

    .line 40
    .end local v1    # "policy":Lcom/oem/os/IThreeKeyPolicy;
    :cond_0
    return-void
.end method

.method protected setUp()V
    .locals 3

    .prologue
    .line 23
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oem/os/IThreeKeyPolicy;

    .line 25
    .local v1, "policy":Lcom/oem/os/IThreeKeyPolicy;
    :try_start_0
    invoke-interface {v1}, Lcom/oem/os/IThreeKeyPolicy;->setUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    goto :goto_0

    .line 30
    .end local v1    # "policy":Lcom/oem/os/IThreeKeyPolicy;
    :cond_0
    return-void
.end method
