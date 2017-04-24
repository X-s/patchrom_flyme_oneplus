.class Landroid/util/Permission$IncomingHandler;
.super Landroid/os/Handler;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/Permission;


# direct methods
.method public constructor <init>(Landroid/util/Permission;Landroid/os/HandlerThread;)V
    .locals 1
    .param p2, "thr"    # Landroid/os/HandlerThread;

    .prologue
    .line 431
    iput-object p1, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    .line 432
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 433
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 437
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 461
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 463
    :goto_0
    return-void

    .line 439
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 440
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 441
    const-string v5, "KEY_PERM_NAME"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "perm":Ljava/lang/String;
    const-string v5, "KEY_IS_USER_GRANTED"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 443
    .local v2, "isGranted":Z
    const-string v5, "KEY_IS_USER_FIXED"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 444
    .local v1, "isFixed":Z
    iget-object v5, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    new-instance v6, Landroid/util/GlobalPermissionState$PermissionState;

    invoke-direct {v6, v3}, Landroid/util/GlobalPermissionState$PermissionState;-><init>(Ljava/lang/String;)V

    # setter for: Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;
    invoke-static {v5, v6}, Landroid/util/Permission;->access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;

    .line 445
    iget-object v5, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    # getter for: Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;
    invoke-static {v5}, Landroid/util/Permission;->access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v5

    iput-boolean v2, v5, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    .line 446
    iget-object v5, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    # getter for: Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;
    invoke-static {v5}, Landroid/util/Permission;->access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v5

    iput-boolean v1, v5, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    .line 448
    .end local v1    # "isFixed":Z
    .end local v2    # "isGranted":Z
    .end local v3    # "perm":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const-string/jumbo v6, "user had made decision"

    # invokes: Landroid/util/Permission;->letGo(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/util/Permission;->access$100(Landroid/util/Permission;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 452
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v5, "KEY_PKG_PEMISSIONS"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/util/GlobalPermissionState$PackagePermissionState;

    .line 453
    .local v4, "pps":Landroid/util/GlobalPermissionState$PackagePermissionState;
    if-eqz v4, :cond_1

    .line 454
    iget-object v6, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    iget-object v5, v4, Landroid/util/GlobalPermissionState$PackagePermissionState;->mPermMap:Ljava/util/LinkedHashMap;

    iget-object v7, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    # getter for: Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;
    invoke-static {v7}, Landroid/util/Permission;->access$200(Landroid/util/Permission;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/GlobalPermissionState$PermissionState;

    # setter for: Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;
    invoke-static {v6, v5}, Landroid/util/Permission;->access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;

    .line 458
    :goto_1
    iget-object v5, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const-string v6, "control service feedback package permission state"

    # invokes: Landroid/util/Permission;->letGo(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/util/Permission;->access$100(Landroid/util/Permission;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v5, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const/4 v6, 0x0

    # setter for: Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;
    invoke-static {v5, v6}, Landroid/util/Permission;->access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;

    goto :goto_1

    .line 437
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
