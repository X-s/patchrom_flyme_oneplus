.class public abstract Lcom/oneplus/gallery2/editor/PhotoEditorObject;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "PhotoEditorObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/editor/PhotoEditorObject$1;,
        Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;
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
            "Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsModified"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    .line 24
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "State"

    const-class v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->NEW:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "hasHandler"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method final bind(Lcom/oneplus/gallery2/editor/PhotoEditor;)V
    .locals 2
    .param p1, "editor"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->verifyAccess()V

    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    if-ne v0, p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Object is already bound to another editor."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    goto :goto_0
.end method

.method protected final completePreparation(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->verifyAccess()V

    .line 95
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completePreparation() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->READY:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->ERROR:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getPhotoClipRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    .line 116
    .local v0, "editor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    return-object v0
.end method

.method protected getPhotoOrientation()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    .line 137
    .local v0, "editor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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
    .line 147
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    .line 148
    .local v0, "editor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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
    .line 158
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    .line 159
    .local v0, "editor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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

.method protected abstract onPrepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)Z
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->RELEASED:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 177
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 178
    return-void
.end method

.method final prepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/PhotoMedia;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->verifyAccess()V

    .line 190
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$1;->$SwitchMap$com$oneplus$gallery2$editor$PhotoEditorObject$State:[I

    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - No photo editor"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->onPrepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - Fail to start preparation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->ERROR:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
