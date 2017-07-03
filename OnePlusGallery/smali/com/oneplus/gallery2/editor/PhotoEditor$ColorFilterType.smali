.class public final enum Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;
.super Ljava/lang/Enum;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

.field public static final enum COLOR_TONE:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

.field public static final enum CONTRAST:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

.field public static final enum EXPOSURE:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

.field public static final enum SATURATION:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    const-string v1, "COLOR_TONE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->COLOR_TONE:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    .line 238
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    const-string v1, "CONTRAST"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->CONTRAST:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    .line 239
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    const-string v1, "EXPOSURE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->EXPOSURE:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    .line 240
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    const-string v1, "SATURATION"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->SATURATION:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    .line 235
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->COLOR_TONE:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->CONTRAST:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->EXPOSURE:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->SATURATION:Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->$VALUES:[Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

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
    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    const-class v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->$VALUES:[Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;

    return-object v0
.end method
