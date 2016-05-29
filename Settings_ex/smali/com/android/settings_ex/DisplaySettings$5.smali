.class Lcom/android/settings_ex/DisplaySettings$5;
.super Landroid/os/Handler;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$5;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1051
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1052
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1053
    .local v0, "objValue2":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$5;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1054
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "change font style !"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1055
    return-void
.end method
