.class Lcom/android/settings_ex/gestures/GesturePreference$4;
.super Ljava/lang/Object;
.source "GesturePreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gestures/GesturePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gestures/GesturePreference;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gestures/GesturePreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/gestures/GesturePreference;
    .param p2, "val$imageView"    # Landroid/widget/ImageView;
    .param p3, "val$playButton"    # Landroid/widget/ImageView;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    iput-object p2, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0, v2}, Lcom/android/settings_ex/gestures/GesturePreference;->-set1(Lcom/android/settings_ex/gestures/GesturePreference;Z)Z

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get2(Lcom/android/settings_ex/gestures/GesturePreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->val$imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    :cond_1
    :goto_1
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get1(Lcom/android/settings_ex/gestures/GesturePreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0, v2}, Lcom/android/settings_ex/gestures/GesturePreference;->-set0(Lcom/android/settings_ex/gestures/GesturePreference;Z)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->-get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$4;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
