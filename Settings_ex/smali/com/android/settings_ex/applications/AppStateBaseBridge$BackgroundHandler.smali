.class Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;
    }
.end annotation


# static fields
.field private static final MSG_FORCE_LOAD_PKG:I = 0x2

.field private static final MSG_LOAD_ALL:I = 0x1


# instance fields
.field mLoadAllExtraInfoThread:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;

.field final synthetic this$0:Lcom/android/settings_ex/applications/AppStateBaseBridge;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/AppStateBaseBridge;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->mLoadAllExtraInfoThread:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->mLoadAllExtraInfoThread:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->mLoadAllExtraInfoThread:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;->interrupt()V

    .line 151
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->mLoadAllExtraInfoThread:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;

    .line 152
    new-instance v6, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;-><init>(Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;)V

    iput-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->mLoadAllExtraInfoThread:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;

    .line 153
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->mLoadAllExtraInfoThread:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;->start()V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    iget-object v6, v6, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v6}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    .local v0, "N":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 159
    .local v4, "pkg":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 160
    .local v5, "uid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 161
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 162
    .local v1, "app":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v6, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v5, :cond_1

    iget-object v6, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    invoke-virtual {v6, v1, v4, v5}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->updateExtraInfo(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    .line 160
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v1    # "app":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    iget-object v6, v6, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
