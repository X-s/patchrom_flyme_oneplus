.class Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;
.super Ljava/lang/Thread;
.source "OPScreenBetterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OPScreenBetterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveColotModeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OPScreenBetterActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # invokes: Lcom/android/settings_ex/OPScreenBetterActivity;->saveColorMode()V
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$500(Lcom/android/settings_ex/OPScreenBetterActivity;)V

    .line 314
    return-void
.end method
