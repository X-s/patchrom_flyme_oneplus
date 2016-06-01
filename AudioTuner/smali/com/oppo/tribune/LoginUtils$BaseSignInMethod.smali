.class public Lcom/oppo/tribune/LoginUtils$BaseSignInMethod;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Lcom/oppo/tribune/LoginUtils$SignInMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/LoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSignInMethod"
.end annotation


# instance fields
.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/tribune/LoginUtils$BaseSignInMethod;->mUserId:J

    .line 257
    return-void
.end method


# virtual methods
.method public getSignInUserId()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/oppo/tribune/LoginUtils$BaseSignInMethod;->mUserId:J

    return-wide v0
.end method

.method public signIn(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils;->getAutoLoginUser(Landroid/content/Context;)Lcom/oppo/tribune/LoginUtils$AutoSignUser;

    move-result-object v1

    .line 263
    .local v1, "user":Lcom/oppo/tribune/LoginUtils$AutoSignUser;
    if-nez v1, :cond_0

    .line 271
    :goto_0
    return v3

    .line 267
    :cond_0
    invoke-static {p1, v1}, Lcom/oppo/tribune/LoginUtils;->signInWithBaseMethod(Landroid/content/Context;Lcom/oppo/tribune/LoginUtils$AutoSignUser;)Lcom/oppo/tribune/BaseSignInResult;

    move-result-object v0

    .line 268
    .local v0, "r":Lcom/oppo/tribune/BaseSignInResult;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/tribune/BaseSignInResult;->getResultId()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 269
    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils;->updateLocalUserFromServer(Landroid/content/Context;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/LoginUtils$BaseSignInMethod;->mUserId:J

    .line 271
    :cond_1
    iget-wide v4, p0, Lcom/oppo/tribune/LoginUtils$BaseSignInMethod;->mUserId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
