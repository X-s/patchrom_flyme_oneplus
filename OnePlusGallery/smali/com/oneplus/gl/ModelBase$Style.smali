.class public final enum Lcom/oneplus/gl/ModelBase$Style;
.super Ljava/lang/Enum;
.source "ModelBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gl/ModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gl/ModelBase$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gl/ModelBase$Style;

.field public static final enum FACES:Lcom/oneplus/gl/ModelBase$Style;

.field public static final enum LINES:Lcom/oneplus/gl/ModelBase$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/oneplus/gl/ModelBase$Style;

    const-string v1, "FACES"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gl/ModelBase$Style;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/oneplus/gl/ModelBase$Style;->FACES:Lcom/oneplus/gl/ModelBase$Style;

    .line 29
    new-instance v0, Lcom/oneplus/gl/ModelBase$Style;

    const-string v1, "LINES"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gl/ModelBase$Style;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lcom/oneplus/gl/ModelBase$Style;->LINES:Lcom/oneplus/gl/ModelBase$Style;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/gl/ModelBase$Style;

    sget-object v1, Lcom/oneplus/gl/ModelBase$Style;->FACES:Lcom/oneplus/gl/ModelBase$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gl/ModelBase$Style;->LINES:Lcom/oneplus/gl/ModelBase$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gl/ModelBase$Style;->ENUM$VALUES:[Lcom/oneplus/gl/ModelBase$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gl/ModelBase$Style;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/oneplus/gl/ModelBase$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/ModelBase$Style;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gl/ModelBase$Style;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gl/ModelBase$Style;->ENUM$VALUES:[Lcom/oneplus/gl/ModelBase$Style;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gl/ModelBase$Style;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
