.class Lcom/android/systemui_ex/volume/VolumePanel$11;
.super Landroid/media/session/MediaController$Callback;
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
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 1675
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$11;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$11;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    .line 1678
    return-void
.end method
