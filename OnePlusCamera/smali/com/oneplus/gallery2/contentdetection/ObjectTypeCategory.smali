.class public final Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;
.super Ljava/lang/Object;
.source "ObjectTypeCategory.java"


# static fields
.field public static final ANIMALS:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

.field public static final BUILDINGS:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

.field public static final FOODS:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

.field public static final LANDSCAPES:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

.field public static final NIGHT:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

.field public static final PEOPLE:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;


# instance fields
.field public final id:I

.field private volatile m_DisplayNameResId:I

.field private final m_DisplayNameResName:Ljava/lang/String;

.field private final m_Types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/contentdetection/ObjectType;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    const/16 v1, 0x3e8

    const-string/jumbo v2, "Animals"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->ANIMALS:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    .line 22
    new-instance v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    const/16 v1, 0x7d0

    const-string/jumbo v2, "Buildings"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->BUILDINGS:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    .line 26
    new-instance v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    const/16 v1, 0xbb8

    const-string/jumbo v2, "Foods"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->FOODS:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    .line 30
    new-instance v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    const/16 v1, 0xfa0

    const-string/jumbo v2, "Landscapes"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->LANDSCAPES:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    .line 34
    new-instance v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    const/16 v1, 0x1388

    const-string/jumbo v2, "Night"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->NIGHT:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    .line 38
    new-instance v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    const/16 v1, 0x1770

    const-string/jumbo v2, "People"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->PEOPLE:Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->m_Types:Ljava/util/Set;

    .line 60
    iput p1, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->id:I

    .line 61
    iput-object p2, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->name:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "object_type_category_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->m_DisplayNameResName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method addType(Lcom/oneplus/gallery2/contentdetection/ObjectType;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->m_Types:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public contains(Lcom/oneplus/gallery2/contentdetection/ObjectType;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->m_Types:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    iget v2, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->m_DisplayNameResId:I

    if-lez v2, :cond_0

    .line 94
    :goto_0
    iget v0, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->m_DisplayNameResId:I

    if-gtz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->name:Ljava/lang/String;

    return-object v0

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->m_DisplayNameResName:Ljava/lang/String;

    const-string/jumbo v3, "string"

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->m_DisplayNameResId:I

    goto :goto_0

    .line 95
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->id:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/contentdetection/ObjectTypeCategory;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
