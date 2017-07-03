.class final enum Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;
.super Ljava/lang/Enum;
.source "ColorFilterEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ColorFilterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

.field public static final enum CONTRAST:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

.field public static final enum EXPOSURE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

.field public static final enum NONE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

.field public static final enum SATURATION:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    const-string v1, "CONTRAST"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->CONTRAST:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    .line 34
    new-instance v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    const-string v1, "EXPOSURE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->EXPOSURE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    .line 35
    new-instance v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->NONE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    const-string v1, "SATURATION"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->SATURATION:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    sget-object v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->CONTRAST:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->EXPOSURE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->NONE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->SATURATION:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->$VALUES:[Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->$VALUES:[Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    return-object v0
.end method
