.class public abstract Lcom/oneplus/gallery/editor/PhotoEditorObject;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "PhotoEditorObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/PhotoEditorObject$1;,
        Lcom/oneplus/gallery/editor/PhotoEditorObject$State;
    }
.end annotation


# static fields
.field public static final PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/editor/PhotoEditorObject$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsModified"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditorObject;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    .line 26
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "State"

    const-class v2, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditorObject;

    sget-object v4, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->NEW:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "hasHandler"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method final bind(Lcom/oneplus/gallery/editor/PhotoEditor;)V
    .locals 2
    .param p1, "editor"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->verifyAccess()V

    .line 79
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    if-ne v0, p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Object is already bound to another editor."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    goto :goto_0
.end method

.method protected final completePreparation(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->verifyAccess()V

    .line 97
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completePreparation() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    .line 105
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->READY:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->ERROR:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getPhotoClipRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    .line 118
    .local v0, "editor":Lcom/oneplus/gallery/editor/PhotoEditor;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getPhotoClipRectPixels()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    .line 129
    .local v0, "editor":Lcom/oneplus/gallery/editor/PhotoEditor;
    if-eqz v0, :cond_0

    .line 131
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 132
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getWidth()I

    move-result v2

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->getClipRectPixels(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 135
    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    return-object v0
.end method

.method protected getPhotoOrientation()I
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    .line 156
    .local v0, "editor":Lcom/oneplus/gallery/editor/PhotoEditor;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPhotoFlippedX()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    .line 167
    .local v0, "editor":Lcom/oneplus/gallery/editor/PhotoEditor;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPhotoFlippedY()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    .line 178
    .local v0, "editor":Lcom/oneplus/gallery/editor/PhotoEditor;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract onPrepare(Lcom/oneplus/gallery/media/PhotoMedia;Landroid/graphics/Bitmap;)Z
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->RELEASED:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 196
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 197
    return-void
.end method

.method final prepare(Lcom/oneplus/gallery/media/PhotoMedia;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->verifyAccess()V

    .line 209
    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$1;->$SwitchMap$com$oneplus$gallery$editor$PhotoEditorObject$State:[I

    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 217
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - No photo editor"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->onPrepare(Lcom/oneplus/gallery/media/PhotoMedia;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - Fail to start preparation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->ERROR:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
