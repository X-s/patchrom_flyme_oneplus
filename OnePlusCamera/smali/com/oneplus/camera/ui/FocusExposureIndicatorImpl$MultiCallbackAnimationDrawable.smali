.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "FocusExposureIndicatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiCallbackAnimationDrawable"
.end annotation


# instance fields
.field private m_Callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public clearCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 229
    iput-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    .line 224
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 238
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-interface {v0, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 234
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    return-void
.end method

.method public removeCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimationDrawable;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 257
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 258
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 254
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 266
    iget-object v2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$MultiCallbackAnimationDrawable;->m_Callbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 267
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 263
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    return-void
.end method
