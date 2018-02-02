.class public Lcom/oneplus/camera/ui/menu/MenuItem;
.super Lcom/oneplus/camera/ui/ListItem;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;
    }
.end annotation


# static fields
.field public static final PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 14
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DividerStyle"

    const-class v2, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    const-class v3, Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v5, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->NORMAL:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ListItem;-><init>()V

    return-void
.end method
