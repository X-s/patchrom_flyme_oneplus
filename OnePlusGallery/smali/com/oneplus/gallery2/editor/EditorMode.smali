.class public interface abstract Lcom/oneplus/gallery2/editor/EditorMode;
.super Ljava/lang/Object;
.source "EditorMode.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;


# static fields
.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_IS_INITIAL_EDITOR_MODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery2/editor/EditorMode;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/EditorMode;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 21
    sget-object v0, Lcom/oneplus/gallery2/editor/EditorMode;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/editor/EditorMode;->FLAG_IS_INITIAL_EDITOR_MODE:I

    return-void
.end method


# virtual methods
.method public abstract cancelTempOriginalPreview()Z
.end method

.method public abstract enter(I)Z
.end method

.method public abstract exit(I)V
.end method

.method public abstract handlePreviewTouchEvent(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;)V
.end method

.method public abstract onCreateView(Landroid/view/View;)V
.end method

.method public abstract onDestroyView()V
.end method

.method public abstract showTempOriginalPreview()Z
.end method
