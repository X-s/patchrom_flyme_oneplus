.class public final enum Lcom/oneplus/util/SearchMode;
.super Ljava/lang/Enum;
.source "SearchMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/util/SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/util/SearchMode;

.field public static final enum NEAREST:Lcom/oneplus/util/SearchMode;

.field public static final enum NEAREST_ABOVE_OR_EQUALS:Lcom/oneplus/util/SearchMode;

.field public static final enum NEAREST_BELOW_OR_EQUALS:Lcom/oneplus/util/SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/util/SearchMode;

    const-string/jumbo v1, "NEAREST"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/util/SearchMode;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/util/SearchMode;->NEAREST:Lcom/oneplus/util/SearchMode;

    .line 12
    new-instance v0, Lcom/oneplus/util/SearchMode;

    const-string/jumbo v1, "NEAREST_ABOVE_OR_EQUALS"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/util/SearchMode;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/util/SearchMode;->NEAREST_ABOVE_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    .line 16
    new-instance v0, Lcom/oneplus/util/SearchMode;

    const-string/jumbo v1, "NEAREST_BELOW_OR_EQUALS"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/util/SearchMode;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/util/SearchMode;->NEAREST_BELOW_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/util/SearchMode;

    sget-object v1, Lcom/oneplus/util/SearchMode;->NEAREST:Lcom/oneplus/util/SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/util/SearchMode;->NEAREST_ABOVE_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/util/SearchMode;->NEAREST_BELOW_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/util/SearchMode;->$VALUES:[Lcom/oneplus/util/SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/util/SearchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/util/SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/util/SearchMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/util/SearchMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/util/SearchMode;->$VALUES:[Lcom/oneplus/util/SearchMode;

    return-object v0
.end method
