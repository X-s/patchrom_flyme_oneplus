.class public final enum Lcom/oneplus/gl/Texture2D$Format;
.super Ljava/lang/Enum;
.source "Texture2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gl/Texture2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gl/Texture2D$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gl/Texture2D$Format;

.field public static final enum DEPTH:Lcom/oneplus/gl/Texture2D$Format;

.field public static final enum RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

.field public static final enum RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

.field public static final enum RGB_565:Lcom/oneplus/gl/Texture2D$Format;

.field public static final enum UNKNOWN:Lcom/oneplus/gl/Texture2D$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->UNKNOWN:Lcom/oneplus/gl/Texture2D$Format;

    .line 36
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string/jumbo v1, "RGBA_8888"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    .line 40
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string/jumbo v1, "RGBA_4444"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    .line 44
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string/jumbo v1, "RGB_565"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    .line 48
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string/jumbo v1, "DEPTH"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->DEPTH:Lcom/oneplus/gl/Texture2D$Format;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/gl/Texture2D$Format;

    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->UNKNOWN:Lcom/oneplus/gl/Texture2D$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->DEPTH:Lcom/oneplus/gl/Texture2D$Format;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->$VALUES:[Lcom/oneplus/gl/Texture2D$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gl/Texture2D$Format;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/oneplus/gl/Texture2D$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/Texture2D$Format;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gl/Texture2D$Format;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->$VALUES:[Lcom/oneplus/gl/Texture2D$Format;

    return-object v0
.end method
