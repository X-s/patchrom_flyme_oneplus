.class Lcom/oneplus/settings/OPButtonsSettings$1;
.super Landroid/os/Handler;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPButtonsSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPButtonsSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$1;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$1;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    # invokes: Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V
    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->access$000(Lcom/oneplus/settings/OPButtonsSettings;)V

    .line 138
    :cond_0
    return-void
.end method
