.class Lcom/android/settings_ex/deviceinfo/Memory$2;
.super Landroid/os/Handler;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$2;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    .line 372
    .local v0, "objValue2":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$2;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # invokes: Lcom/android/settings_ex/deviceinfo/Memory;->unmount()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$100(Lcom/android/settings_ex/deviceinfo/Memory;)V

    .line 374
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mUnmountHandler unmount what : 1"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$2;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # invokes: Lcom/android/settings_ex/deviceinfo/Memory;->mount()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$200(Lcom/android/settings_ex/deviceinfo/Memory;)V

    .line 377
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mUnmountHandler mount what : 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$2;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$300(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
