.class final enum Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;
.super Ljava/lang/Enum;
.source "NetEaseFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/NetEaseFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

.field public static final enum PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

.field public static final enum PREPARING_IMAGE:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

.field public static final enum READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .line 118
    new-instance v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    const-string v1, "PREPARING_IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING_IMAGE:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .line 119
    new-instance v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING_IMAGE:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->$VALUES:[Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->$VALUES:[Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    return-object v0
.end method
