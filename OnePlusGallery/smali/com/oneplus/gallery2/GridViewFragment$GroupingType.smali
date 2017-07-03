.class public final enum Lcom/oneplus/gallery2/GridViewFragment$GroupingType;
.super Ljava/lang/Enum;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/GridViewFragment$GroupingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

.field public static final enum By_Date:Lcom/oneplus/gallery2/GridViewFragment$GroupingType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 934
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

    const-string v1, "By_Date"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment$GroupingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$GroupingType;->By_Date:Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

    .line 929
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$GroupingType;->By_Date:Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$GroupingType;->$VALUES:[Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

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
    .line 929
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/GridViewFragment$GroupingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 929
    const-class v0, Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/GridViewFragment$GroupingType;
    .locals 1

    .prologue
    .line 929
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$GroupingType;->$VALUES:[Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/GridViewFragment$GroupingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/GridViewFragment$GroupingType;

    return-object v0
.end method
