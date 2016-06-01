.class public interface abstract Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;
.super Ljava/lang/Object;
.source "RomLoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/RomLoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoginCallback"
.end annotation


# virtual methods
.method public abstract onLoginFail()V
.end method

.method public abstract onLoginSuccess()V
.end method

.method public abstract onTokenTimeOut()V
.end method
