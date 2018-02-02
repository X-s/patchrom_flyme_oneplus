.class public abstract Lcom/oneplus/camera/ui/ListItem;
.super Lcom/oneplus/base/BasicBaseObject;
.source "ListItem.java"


# static fields
.field public static final PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_TITLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsChecked"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/ListItem;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/ListItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    .line 18
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "IsEnabled"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/camera/ui/ListItem;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v10, 0x2

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/camera/ui/ListItem;->PROP_IS_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 22
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Summary"

    const-class v2, Ljava/lang/CharSequence;

    const-class v3, Lcom/oneplus/camera/ui/ListItem;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/ListItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    .line 26
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Title"

    const-class v2, Ljava/lang/CharSequence;

    const-class v3, Lcom/oneplus/camera/ui/ListItem;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/ListItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    .line 30
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SubTitle"

    const-class v2, Ljava/lang/CharSequence;

    const-class v3, Lcom/oneplus/camera/ui/ListItem;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/ListItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    return-void
.end method
