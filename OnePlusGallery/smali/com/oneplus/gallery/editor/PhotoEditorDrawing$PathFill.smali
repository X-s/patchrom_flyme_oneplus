.class public final enum Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;
.super Ljava/lang/Enum;
.source "PhotoEditorDrawing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/PhotoEditorDrawing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PathFill"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

.field public static final enum COLOR:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

.field public static final enum MOSAIC:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->COLOR:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    .line 49
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    const-string v1, "MOSAIC"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->MOSAIC:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->COLOR:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->MOSAIC:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->$VALUES:[Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->$VALUES:[Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    return-object v0
.end method
