.class Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;
.super Ljava/lang/Thread;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAllExtraInfoThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;->this$1:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;->this$1:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->loadAllExtraInfo()V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler$LoadAllExtraInfoThread;->this$1:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;->sendEmptyMessage(I)Z

    .line 140
    return-void
.end method
