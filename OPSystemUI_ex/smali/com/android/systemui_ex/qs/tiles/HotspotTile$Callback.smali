.class final Lcom/android/systemui_ex/qs/tiles/HotspotTile$Callback;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/HotspotController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/tiles/HotspotTile;


# virtual methods
.method public onHotspotChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile$Callback;->this$0:Lcom/android/systemui_ex/qs/tiles/HotspotTile;

    # invokes: Lcom/android/systemui_ex/qs/tiles/HotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->access$200(Lcom/android/systemui_ex/qs/tiles/HotspotTile;)V

    .line 115
    return-void
.end method
