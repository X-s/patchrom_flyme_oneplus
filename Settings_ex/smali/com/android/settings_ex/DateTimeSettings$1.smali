.class Lcom/android/settings_ex/DateTimeSettings$1;
.super Landroid/os/Handler;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DateTimeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/DateTimeSettings;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeSettings$1;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    return-void
.end method
