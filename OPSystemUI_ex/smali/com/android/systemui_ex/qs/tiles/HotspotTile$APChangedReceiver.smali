.class public Lcom/android/systemui_ex/qs/tiles/HotspotTile$APChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APChangedReceiver"
.end annotation


# instance fields
.field private mUsageTracker:Lcom/android/systemui_ex/qs/UsageTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile$APChangedReceiver;->mUsageTracker:Lcom/android/systemui_ex/qs/UsageTracker;

    if-nez v0, :cond_0

    .line 128
    # invokes: Lcom/android/systemui_ex/qs/tiles/HotspotTile;->newUsageTracker(Landroid/content/Context;)Lcom/android/systemui_ex/qs/UsageTracker;
    invoke-static {p1}, Lcom/android/systemui_ex/qs/tiles/HotspotTile;->access$300(Landroid/content/Context;)Lcom/android/systemui_ex/qs/UsageTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/qs/tiles/HotspotTile$APChangedReceiver;->mUsageTracker:Lcom/android/systemui_ex/qs/UsageTracker;

    .line 134
    :cond_0
    return-void
.end method
