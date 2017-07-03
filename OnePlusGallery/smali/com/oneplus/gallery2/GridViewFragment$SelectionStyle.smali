.class public final enum Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;
.super Ljava/lang/Enum;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

.field public static final enum DEFAULT:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

.field public static final enum PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

.field public static final enum PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 923
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    .line 924
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    const-string v1, "PICKER_SINGLE_CHOICE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    .line 925
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    const-string v1, "PICKER_MULTIPLE_CHOICE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    .line 922
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->$VALUES:[Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

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
    .line 922
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 922
    const-class v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;
    .locals 1

    .prologue
    .line 922
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->$VALUES:[Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    return-object v0
.end method
