.class public final enum Lcom/oneplus/widget/ImageClipEditor$ClipMode;
.super Ljava/lang/Enum;
.source "ImageClipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ImageClipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClipMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/widget/ImageClipEditor$ClipMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/widget/ImageClipEditor$ClipMode;

.field public static final enum CLIP_AFTER_TRAMSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

.field public static final enum CLIP_BEFORE_TRANSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    const-string/jumbo v1, "CLIP_BEFORE_TRANSFORMATION"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;-><init>(Ljava/lang/String;I)V

    .line 182
    sput-object v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_BEFORE_TRANSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    .line 183
    new-instance v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    const-string/jumbo v1, "CLIP_AFTER_TRAMSFORMATION"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;-><init>(Ljava/lang/String;I)V

    .line 186
    sput-object v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_AFTER_TRAMSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    sget-object v1, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_BEFORE_TRANSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_AFTER_TRAMSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->$VALUES:[Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/widget/ImageClipEditor$ClipMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    const-class v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/widget/ImageClipEditor$ClipMode;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->$VALUES:[Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    return-object v0
.end method
