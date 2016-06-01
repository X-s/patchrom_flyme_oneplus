.class Lcom/oppo/tribune/util/NetCheckService$3$1;
.super Ljava/lang/Object;
.source "NetCheckService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/util/NetCheckService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/tribune/util/NetCheckService$3;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/util/NetCheckService$3;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 292
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    const/4 v4, 0x1

    # invokes: Lcom/oppo/tribune/util/NetCheckService;->changeLoginState(Z)V
    invoke-static {v1, v4}, Lcom/oppo/tribune/util/NetCheckService;->access$900(Lcom/oppo/tribune/util/NetCheckService;Z)V

    .line 293
    const-wide/16 v2, -0x1

    .line 294
    .local v2, "userId":J
    sget-wide v4, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 295
    new-instance v0, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;

    invoke-direct {v0}, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;-><init>()V

    .line 296
    .local v0, "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/tribune/LoginUtils$SignInMethod;->signIn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v0}, Lcom/oppo/tribune/LoginUtils$SignInMethod;->getSignInUserId()J

    move-result-wide v2

    .line 300
    :cond_0
    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 301
    sput-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    .line 302
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    sget-wide v4, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/LoginUtils;->writeCurrentUid(Landroid/content/Context;J)V

    .line 322
    .end local v0    # "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    const/4 v4, 0x0

    # invokes: Lcom/oppo/tribune/util/NetCheckService;->changeLoginState(Z)V
    invoke-static {v1, v4}, Lcom/oppo/tribune/util/NetCheckService;->access$900(Lcom/oppo/tribune/util/NetCheckService;Z)V

    .line 323
    return-void

    .line 304
    .restart local v0    # "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    :cond_1
    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/LoginUtils;->signOutAction(Landroid/content/Context;)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    sget-wide v4, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/LoginUtils;->writeCurrentUid(Landroid/content/Context;J)V

    goto :goto_0

    .line 311
    .end local v0    # "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    :cond_3
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/LoginUtils;->getAutoSignInUserId(Landroid/content/Context;)J

    move-result-wide v2

    .line 312
    cmp-long v1, v2, v6

    if-lez v1, :cond_4

    .line 313
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/LoginUtils;->whenSignInSuccess(Landroid/content/Context;J)V

    goto :goto_0

    .line 314
    :cond_4
    cmp-long v1, v2, v6

    if-nez v1, :cond_5

    .line 315
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/LoginUtils;->signOutAction(Landroid/content/Context;)V

    goto :goto_0

    .line 317
    :cond_5
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$3;

    iget-object v1, v1, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    sget-wide v4, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/LoginUtils;->writeCurrentUid(Landroid/content/Context;J)V

    goto :goto_0
.end method
