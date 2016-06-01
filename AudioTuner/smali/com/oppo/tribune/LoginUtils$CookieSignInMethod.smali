.class public Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;
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
    name = "CookieSignInMethod"
.end annotation


# instance fields
.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;->mUserId:J

    .line 232
    return-void
.end method


# virtual methods
.method public getSignInUserId()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;->mUserId:J

    return-wide v0
.end method

.method public signIn(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 236
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;->mUserId:J

    .line 237
    # invokes: Lcom/oppo/tribune/LoginUtils;->signInWithCookie(Landroid/content/Context;)J
    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils;->access$200(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 238
    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils;->updateLocalUserFromServer(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;->mUserId:J

    .line 241
    :cond_0
    iget-wide v0, p0, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;->mUserId:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
