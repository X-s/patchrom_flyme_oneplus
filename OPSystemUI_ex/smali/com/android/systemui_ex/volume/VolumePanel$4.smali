.class Lcom/android/systemui_ex/volume/VolumePanel$4;
.super Landroid/database/ContentObserver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$4;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$4;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->setupVolumePanelBlur()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1200(Lcom/android/systemui_ex/volume/VolumePanel;)V

    .line 506
    return-void
.end method
