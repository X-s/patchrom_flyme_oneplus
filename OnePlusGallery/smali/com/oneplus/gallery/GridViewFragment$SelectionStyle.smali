.class public final enum Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;
.super Ljava/lang/Enum;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

.field public static final enum DEFAULT:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

.field public static final enum PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

.field public static final enum PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 897
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    .line 898
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    const-string v1, "PICKER_SINGLE_CHOICE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    .line 899
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    const-string v1, "PICKER_MULTIPLE_CHOICE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    .line 896
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->$VALUES:[Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

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
    .line 896
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 896
    const-class v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;
    .locals 1

    .prologue
    .line 896
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->$VALUES:[Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    return-object v0
.end method
