.class Lcom/oneplus/gallery/CameraGalleryImpl$12;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    .prologue
    .line 2219
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    const/4 v2, 0x0

    .line 2224
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2259
    :cond_0
    :goto_0
    return-void

    .line 2227
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7902(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z

    goto :goto_0

    .line 2231
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7900(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2232
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2724

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2235
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6300(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 2236
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8002(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2237
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8100(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8102(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2240
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7900(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2241
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7902(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z

    .line 2246
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->checkActionEditSupported()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8200(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 2249
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2250
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v1}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8002(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2251
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8100(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2252
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v1}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8102(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2243
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1400(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    goto :goto_1

    .line 2256
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8300(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    goto/16 :goto_0

    .line 2224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
