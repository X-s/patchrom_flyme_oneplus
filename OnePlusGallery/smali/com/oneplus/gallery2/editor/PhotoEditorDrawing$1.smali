.class synthetic Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$1;
.super Ljava/lang/Object;
.source "PhotoEditorDrawing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$gallery2$editor$PhotoEditorDrawing$PathFill:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 596
    invoke-static {}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;->values()[Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$1;->$SwitchMap$com$oneplus$gallery2$editor$PhotoEditorDrawing$PathFill:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$1;->$SwitchMap$com$oneplus$gallery2$editor$PhotoEditorDrawing$PathFill:[I

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;->COLOR:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$1;->$SwitchMap$com$oneplus$gallery2$editor$PhotoEditorDrawing$PathFill:[I

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;->MOSAIC:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PathFill;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
