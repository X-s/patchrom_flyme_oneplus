.class Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1$2;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1$2;->this$1:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1$2;->this$1:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;

    iget-object v0, v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->setVisibility(I)V

    .line 79
    :cond_0
    return v1
.end method
