.class Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->addTile(Lcom/android/systemui_ex/controlpanel/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

.field final synthetic val$r:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "announcement"    # Ljava/lang/CharSequence;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    iput-boolean p1, v0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->scanState:Z

    .line 227
    return-void
.end method

.method public onShowDetail(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->showDetail(ZLcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V
    invoke-static {v0, p1, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->access$400(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;ZLcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V

    .line 222
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->onStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setAnimationEnabled(Z)V

    .line 217
    return-void
.end method
