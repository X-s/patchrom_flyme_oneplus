.class Lcom/android/server/display/ColorBalanceService$1;
.super Landroid/database/ContentObserver;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorBalanceService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    iput-object p3, p0, Lcom/android/server/display/ColorBalanceService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-wrap1(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set0(Lcom/android/server/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 220
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get0(Lcom/android/server/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$1;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-wrap8(Lcom/android/server/display/ColorBalanceService;)V

    .line 215
    :cond_0
    return-void
.end method
