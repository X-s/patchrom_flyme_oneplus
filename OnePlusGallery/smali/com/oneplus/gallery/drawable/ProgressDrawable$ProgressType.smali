.class public final enum Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;
.super Ljava/lang/Enum;
.source "ProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/drawable/ProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

.field public static final enum NEGATIVE_ONLY:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

.field public static final enum NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

.field public static final enum POSITIVE_ONLY:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    .line 32
    new-instance v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    const-string v1, "POSITIVE_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->POSITIVE_ONLY:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    .line 33
    new-instance v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    const-string v1, "NEGATIVE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NEGATIVE_ONLY:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    sget-object v1, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->POSITIVE_ONLY:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NEGATIVE_ONLY:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->$VALUES:[Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->$VALUES:[Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    return-object v0
.end method
