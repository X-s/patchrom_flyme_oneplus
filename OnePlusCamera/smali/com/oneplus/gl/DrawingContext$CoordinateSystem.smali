.class public final enum Lcom/oneplus/gl/DrawingContext$CoordinateSystem;
.super Ljava/lang/Enum;
.source "DrawingContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gl/DrawingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoordinateSystem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gl/DrawingContext$CoordinateSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

.field public static final enum X_RIGHT_Y_DOWN:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

.field public static final enum X_RIGHT_Y_UP:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    const-string/jumbo v1, "X_RIGHT_Y_UP"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->X_RIGHT_Y_UP:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    .line 27
    new-instance v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    const-string/jumbo v1, "X_RIGHT_Y_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->X_RIGHT_Y_DOWN:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    sget-object v1, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->X_RIGHT_Y_UP:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->X_RIGHT_Y_DOWN:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->$VALUES:[Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gl/DrawingContext$CoordinateSystem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gl/DrawingContext$CoordinateSystem;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->$VALUES:[Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    return-object v0
.end method
