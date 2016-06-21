.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$17;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$17;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideControlPanel(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$17;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    .line 1024
    return-void
.end method
