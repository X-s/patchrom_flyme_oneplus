.class final enum Lcom/oneplus/widget/ScaleImageView$ScrollState;
.super Ljava/lang/Enum;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/widget/ScaleImageView$ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/widget/ScaleImageView$ScrollState;

.field public static final enum BOUNCING:Lcom/oneplus/widget/ScaleImageView$ScrollState;

.field public static final enum IDLE:Lcom/oneplus/widget/ScaleImageView$ScrollState;

.field public static final enum SCROLLING:Lcom/oneplus/widget/ScaleImageView$ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/widget/ScaleImageView$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;->IDLE:Lcom/oneplus/widget/ScaleImageView$ScrollState;

    .line 149
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;

    const-string/jumbo v1, "SCROLLING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/widget/ScaleImageView$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;->SCROLLING:Lcom/oneplus/widget/ScaleImageView$ScrollState;

    .line 150
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;

    const-string/jumbo v1, "BOUNCING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/widget/ScaleImageView$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;->BOUNCING:Lcom/oneplus/widget/ScaleImageView$ScrollState;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/widget/ScaleImageView$ScrollState;

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$ScrollState;->IDLE:Lcom/oneplus/widget/ScaleImageView$ScrollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$ScrollState;->SCROLLING:Lcom/oneplus/widget/ScaleImageView$ScrollState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$ScrollState;->BOUNCING:Lcom/oneplus/widget/ScaleImageView$ScrollState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;->$VALUES:[Lcom/oneplus/widget/ScaleImageView$ScrollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/widget/ScaleImageView$ScrollState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/widget/ScaleImageView$ScrollState;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$ScrollState;->$VALUES:[Lcom/oneplus/widget/ScaleImageView$ScrollState;

    return-object v0
.end method
