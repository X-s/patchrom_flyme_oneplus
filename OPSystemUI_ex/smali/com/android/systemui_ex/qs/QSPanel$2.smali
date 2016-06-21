.class Lcom/android/systemui_ex/qs/QSPanel$2;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/qs/QSPanel;->addTile(Lcom/android/systemui_ex/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSPanel;

.field final synthetic val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$TileRecord;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "announcement"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/qs/QSPanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    iput-boolean p1, v0, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->scanState:Z

    .line 278
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    # getter for: Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;
    invoke-static {v0}, Lcom/android/systemui_ex/qs/QSPanel;->access$600(Lcom/android/systemui_ex/qs/QSPanel;)Lcom/android/systemui_ex/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->scanState:Z

    # invokes: Lcom/android/systemui_ex/qs/QSPanel;->fireScanStateChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->access$800(Lcom/android/systemui_ex/qs/QSPanel;Z)V

    .line 281
    :cond_0
    return-void
.end method

.method public onShowDetail(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    # invokes: Lcom/android/systemui_ex/qs/QSPanel;->showDetail(ZLcom/android/systemui_ex/qs/QSPanel$Record;)V
    invoke-static {v0, p1, v1}, Lcom/android/systemui_ex/qs/QSPanel;->access$500(Lcom/android/systemui_ex/qs/QSPanel;ZLcom/android/systemui_ex/qs/QSPanel$Record;)V

    .line 268
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui_ex/qs/QSTile$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/qs/QSTile$State;

    .prologue
    .line 255
    iget-boolean v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->visible:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 256
    .local v0, "visibility":I
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui_ex/qs/QSTile$State;->visible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    # getter for: Lcom/android/systemui_ex/qs/QSPanel;->mGridContentVisible:Z
    invoke-static {v1}, Lcom/android/systemui_ex/qs/QSPanel;->access$300(Lcom/android/systemui_ex/qs/QSPanel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const/4 v0, 0x4

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    # invokes: Lcom/android/systemui_ex/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui_ex/qs/QSPanel;->access$400(Lcom/android/systemui_ex/qs/QSPanel;Landroid/view/View;I)V

    .line 263
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/qs/QSTileView;->onStateChanged(Lcom/android/systemui_ex/qs/QSTile$State;)V

    .line 264
    return-void

    .line 255
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    # getter for: Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;
    invoke-static {v0}, Lcom/android/systemui_ex/qs/QSPanel;->access$600(Lcom/android/systemui_ex/qs/QSPanel;)Lcom/android/systemui_ex/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$2;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    # invokes: Lcom/android/systemui_ex/qs/QSPanel;->fireToggleStateChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/systemui_ex/qs/QSPanel;->access$700(Lcom/android/systemui_ex/qs/QSPanel;Z)V

    .line 274
    :cond_0
    return-void
.end method
