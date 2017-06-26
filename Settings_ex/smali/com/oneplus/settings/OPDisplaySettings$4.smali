.class Lcom/oneplus/settings/OPDisplaySettings$4;
.super Landroid/os/Handler;
.source "OPDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDisplaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/oneplus/settings/OPDisplaySettings$4;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 923
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 924
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 925
    .local v0, "objValue2":Ljava/lang/Object;
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$4;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/OPDisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 926
    return-void
.end method
