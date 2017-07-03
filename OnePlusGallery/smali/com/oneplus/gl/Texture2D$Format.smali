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
.field public static final enum DEPTH:Lcom/oneplus/gl/Texture2D$Format;

.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gl/Texture2D$Format;

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

    .line 31
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->UNKNOWN:Lcom/oneplus/gl/Texture2D$Format;

    .line 35
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string v1, "RGBA_8888"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    .line 39
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string v1, "RGBA_4444"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    .line 43
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string v1, "RGB_565"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    .line 47
    new-instance v0, Lcom/oneplus/gl/Texture2D$Format;

    const-string v1, "DEPTH"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gl/Texture2D$Format;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->DEPTH:Lcom/oneplus/gl/Texture2D$Format;

    .line 29
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

    sput-object v0, Lcom/oneplus/gl/Texture2D$Format;->ENUM$VALUES:[Lcom/oneplus/gl/Texture2D$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gl/Texture2D$Format;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/oneplus/gl/Texture2D$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/Texture2D$Format;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gl/Texture2D$Format;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->ENUM$VALUES:[Lcom/oneplus/gl/Texture2D$Format;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gl/Texture2D$Format;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
