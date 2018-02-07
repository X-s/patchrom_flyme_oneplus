.class Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;
.super Landroid/os/AsyncTask;
.source "PreferredActivityChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/PreferredActivityChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/PreferredActivityChangedReceiver;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/PreferredActivityChangedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/PreferredActivityChangedReceiver;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->this$0:Lcom/oneplus/settings/PreferredActivityChangedReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 30
    .local v0, "ctx":Landroid/content/Context;
    iget-object v1, p0, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->this$0:Lcom/oneplus/settings/PreferredActivityChangedReceiver;

    const-string/jumbo v2, "net.oneplus.h2launcher"

    const-string/jumbo v3, "net.oneplus.h2launcher.customizations.wallpaper.SetWallpaperActivity"

    invoke-static {v1, v0, v2, v3}, Lcom/oneplus/settings/PreferredActivityChangedReceiver;->-wrap0(Lcom/oneplus/settings/PreferredActivityChangedReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->this$0:Lcom/oneplus/settings/PreferredActivityChangedReceiver;

    const-string/jumbo v2, "net.oneplus.launcher"

    const-string/jumbo v3, "net.oneplus.launcher.wallpaper.SetWallpaperActivity"

    invoke-static {v1, v0, v2, v3}, Lcom/oneplus/settings/PreferredActivityChangedReceiver;->-wrap0(Lcom/oneplus/settings/PreferredActivityChangedReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    return-object v1
.end method
