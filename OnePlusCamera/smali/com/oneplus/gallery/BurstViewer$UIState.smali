.class public final enum Lcom/oneplus/gallery/BurstViewer$UIState;
.super Ljava/lang/Enum;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/BurstViewer$UIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/BurstViewer$UIState;

.field public static final enum CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

.field public static final enum CLOSING:Lcom/oneplus/gallery/BurstViewer$UIState;

.field public static final enum OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

.field public static final enum OPENING:Lcom/oneplus/gallery/BurstViewer$UIState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$UIState;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/BurstViewer$UIState;-><init>(Ljava/lang/String;I)V

    .line 92
    sput-object v0, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    .line 93
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$UIState;

    const-string/jumbo v1, "CLOSING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/BurstViewer$UIState;-><init>(Ljava/lang/String;I)V

    .line 96
    sput-object v0, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSING:Lcom/oneplus/gallery/BurstViewer$UIState;

    .line 97
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$UIState;

    const-string/jumbo v1, "OPENING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/BurstViewer$UIState;-><init>(Ljava/lang/String;I)V

    .line 100
    sput-object v0, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENING:Lcom/oneplus/gallery/BurstViewer$UIState;

    .line 101
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$UIState;

    const-string/jumbo v1, "OPENED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/BurstViewer$UIState;-><init>(Ljava/lang/String;I)V

    .line 104
    sput-object v0, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery/BurstViewer$UIState;

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSING:Lcom/oneplus/gallery/BurstViewer$UIState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENING:Lcom/oneplus/gallery/BurstViewer$UIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery/BurstViewer$UIState;->$VALUES:[Lcom/oneplus/gallery/BurstViewer$UIState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/BurstViewer$UIState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v0, Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$UIState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/BurstViewer$UIState;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/oneplus/gallery/BurstViewer$UIState;->$VALUES:[Lcom/oneplus/gallery/BurstViewer$UIState;

    return-object v0
.end method
