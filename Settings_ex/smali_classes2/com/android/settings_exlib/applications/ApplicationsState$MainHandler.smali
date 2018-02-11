.class Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_ALL_SIZES_COMPUTED:I = 0x5

.field static final MSG_LAUNCHER_INFO_CHANGED:I = 0x7

.field static final MSG_LOAD_ENTRIES_COMPLETE:I = 0x8

.field static final MSG_PACKAGE_ICON_CHANGED:I = 0x3

.field static final MSG_PACKAGE_LIST_CHANGED:I = 0x2

.field static final MSG_PACKAGE_SIZE_CHANGED:I = 0x4

.field static final MSG_REBUILD_COMPLETE:I = 0x1

.field static final MSG_RUNNING_STATE_CHANGED:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/applications/ApplicationsState;


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 703
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 702
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 708
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 709
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 711
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 712
    .local v1, "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    iget-object v2, v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    iget-object v3, v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 717
    .end local v1    # "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 718
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 722
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 727
    .end local v0    # "i":I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 728
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v3, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .line 729
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 728
    invoke-interface {v3, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 733
    .end local v0    # "i":I
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 738
    .end local v0    # "i":I
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 739
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v4, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .line 740
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 739
    :goto_6
    invoke-interface {v4, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    move v2, v3

    .line 740
    goto :goto_6

    .line 744
    .end local v0    # "i":I
    :pswitch_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 745
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onLauncherInfoChanged()V

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 749
    .end local v0    # "i":I
    :pswitch_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;->onLoadEntriesCompleted()V

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
