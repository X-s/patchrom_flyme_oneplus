.class abstract Lcom/oneplus/lib/preference/GenericInflater;
.super Ljava/lang/Object;
.source "GenericInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/GenericInflater$Factory;,
        Lcom/oneplus/lib/preference/GenericInflater$FactoryMerger;,
        Lcom/oneplus/lib/preference/GenericInflater$Parent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P::",
        "Lcom/oneplus/lib/preference/GenericInflater$Parent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final mConstructorSignature:[Ljava/lang/Class;

.field private static final sConstructorMap:Ljava/util/HashMap;


# instance fields
.field private final DEBUG:Z

.field private final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mDefaultPackage:Ljava/lang/String;

.field private mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/preference/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFactorySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 56
    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/oneplus/lib/preference/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/lib/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->DEBUG:Z

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lcom/oneplus/lib/preference/GenericInflater;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/lib/preference/GenericInflater;Landroid/content/Context;)V
    .locals 1
    .param p2, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/preference/GenericInflater",
            "<TT;TP;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p1, "original":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->DEBUG:Z

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 121
    iput-object p2, p0, Lcom/oneplus/lib/preference/GenericInflater;->mContext:Landroid/content/Context;

    .line 122
    iget-object v0, p1, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    iput-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    .line 120
    return-void
.end method

.method private final createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    .line 427
    :goto_0
    if-nez v4, :cond_0

    .line 428
    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v6, v5, :cond_2

    .line 429
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/lib/preference/GenericInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v4

    .line 436
    :cond_0
    :goto_1
    return-object v4

    .line 425
    :cond_1
    iget-object v5, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    iget-object v6, p0, Lcom/oneplus/lib/preference/GenericInflater;->mContext:Landroid/content/Context;

    invoke-interface {v5, p2, v6, p3}, Lcom/oneplus/lib/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "item":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 431
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5, p3}, Lcom/oneplus/lib/preference/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 448
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    const-string/jumbo v6, ": Error inflating class "

    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 452
    .local v3, "ie":Landroid/view/InflateException;
    invoke-virtual {v3, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 453
    throw v3

    .line 441
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 444
    const-string/jumbo v6, ": Error inflating class "

    .line 442
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v3    # "ie":Landroid/view/InflateException;
    invoke-virtual {v3, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 446
    throw v3

    .line 438
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 439
    .local v0, "e":Landroid/view/InflateException;
    throw v0
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 466
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 467
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 469
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 473
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/preference/GenericInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v2, p3}, Lcom/oneplus/lib/preference/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v4, p2

    .line 489
    check-cast v4, Lcom/oneplus/lib/preference/GenericInflater$Parent;

    invoke-interface {v4, v1}, Lcom/oneplus/lib/preference/GenericInflater$Parent;->addItemFromInflater(Ljava/lang/Object;)V

    .line 494
    invoke-direct {p0, p1, v1, p3}, Lcom/oneplus/lib/preference/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 462
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Lcom/oneplus/lib/preference/GenericInflater;
.end method

.method public final createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    sget-object v7, Lcom/oneplus/lib/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 372
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_0

    .line 375
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/lib/preference/GenericInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 376
    if-eqz p2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 375
    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 377
    .local v1, "clazz":Ljava/lang/Class;
    sget-object v7, Lcom/oneplus/lib/preference/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 378
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 379
    sget-object v7, Lcom/oneplus/lib/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 383
    .local v0, "args":[Ljava/lang/Object;
    const/4 v7, 0x1

    aput-object p3, v0, v7

    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .end local v0    # "args":[Ljava/lang/Object;
    :cond_1
    move-object v7, p1

    .line 376
    goto :goto_0

    .line 397
    :catch_0
    move-exception v4

    .line 398
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 400
    const-string/jumbo v8, ": Error inflating class "

    .line 398
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 401
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 402
    .local v6, "ie":Landroid/view/InflateException;
    invoke-virtual {v6, v4}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 403
    throw v6

    .line 394
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v3

    .line 396
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    throw v3

    .line 386
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 387
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 389
    const-string/jumbo v8, ": Error inflating class "

    .line 387
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 390
    if-eqz p2, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v6    # "ie":Landroid/view/InflateException;
    invoke-virtual {v6, v5}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 392
    throw v6
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFactory()Lcom/oneplus/lib/preference/GenericInflater$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/lib/preference/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    return-object v0
.end method

.method public inflate(ILcom/oneplus/lib/preference/GenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TT;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Lcom/oneplus/lib/preference/GenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/GenericInflater;->inflate(ILcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "resource"    # I
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;Z)TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Lcom/oneplus/lib/preference/GenericInflater$Parent;, "TP;"
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/GenericInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 263
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/oneplus/lib/preference/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 265
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 263
    return-object v1

    .line 264
    :catchall_0
    move-exception v1

    .line 265
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 264
    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/lib/preference/GenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;)TT;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Lcom/oneplus/lib/preference/GenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;Z)TT;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Lcom/oneplus/lib/preference/GenericInflater$Parent;, "TP;"
    iget-object v9, p0, Lcom/oneplus/lib/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v9

    .line 293
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 294
    .local v0, "attrs":Landroid/util/AttributeSet;
    iget-object v8, p0, Lcom/oneplus/lib/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    iget-object v10, p0, Lcom/oneplus/lib/preference/GenericInflater;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v8, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    move-object v5, p2

    .line 300
    .local v5, "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    .line 301
    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    .line 305
    :cond_1
    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    .line 306
    new-instance v8, Landroid/view/InflateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 307
    const-string/jumbo v11, ": No start tag found!"

    .line 306
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    .end local v6    # "type":I
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/view/InflateException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "e":Landroid/view/InflateException;
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 317
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "result":Ljava/lang/Object;, "TT;"
    .restart local v6    # "type":I
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v0}, Lcom/oneplus/lib/preference/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v7

    .line 320
    .local v7, "xmlRoot":Ljava/lang/Object;, "TT;"
    check-cast v7, Lcom/oneplus/lib/preference/GenericInflater$Parent;

    .end local v7    # "xmlRoot":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p3, v7}, Lcom/oneplus/lib/preference/GenericInflater;->onMergeRoots(Lcom/oneplus/lib/preference/GenericInflater$Parent;ZLcom/oneplus/lib/preference/GenericInflater$Parent;)Lcom/oneplus/lib/preference/GenericInflater$Parent;

    move-result-object v5

    .line 326
    invoke-direct {p0, p1, v5, v0}, Lcom/oneplus/lib/preference/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v9

    .line 346
    return-object v5

    .line 338
    .end local v6    # "type":I
    :catch_1
    move-exception v2

    .line 339
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Landroid/view/InflateException;

    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 341
    const-string/jumbo v10, ": "

    .line 340
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 341
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 340
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 339
    invoke-direct {v4, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 342
    .local v4, "ex":Landroid/view/InflateException;
    invoke-virtual {v4, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 343
    throw v4

    .line 334
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Landroid/view/InflateException;
    :catch_2
    move-exception v3

    .line 335
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Landroid/view/InflateException;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v4    # "ex":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 337
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/lib/preference/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Lcom/oneplus/lib/preference/GenericInflater$Parent;ZLcom/oneplus/lib/preference/GenericInflater$Parent;)Lcom/oneplus/lib/preference/GenericInflater$Parent;
    .locals 0
    .param p2, "attachToGivenRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;ZTP;)TP;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p1, "givenRoot":Lcom/oneplus/lib/preference/GenericInflater$Parent;, "TP;"
    .local p3, "xmlRoot":Lcom/oneplus/lib/preference/GenericInflater$Parent;, "TP;"
    return-object p3
.end method

.method public setDefaultPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPackage"    # Ljava/lang/String;

    .prologue
    .line 147
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    iput-object p1, p0, Lcom/oneplus/lib/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setFactory(Lcom/oneplus/lib/preference/GenericInflater$Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/preference/GenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/oneplus/lib/preference/GenericInflater;, "Lcom/oneplus/lib/preference/GenericInflater<TT;TP;>;"
    .local p1, "factory":Lcom/oneplus/lib/preference/GenericInflater$Factory;, "Lcom/oneplus/lib/preference/GenericInflater$Factory<TT;>;"
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactorySet:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A factory has already been set on this inflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactorySet:Z

    .line 200
    iget-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    if-nez v0, :cond_2

    .line 201
    iput-object p1, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    .line 191
    :goto_0
    return-void

    .line 203
    :cond_2
    new-instance v0, Lcom/oneplus/lib/preference/GenericInflater$FactoryMerger;

    iget-object v1, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    invoke-direct {v0, p1, v1}, Lcom/oneplus/lib/preference/GenericInflater$FactoryMerger;-><init>(Lcom/oneplus/lib/preference/GenericInflater$Factory;Lcom/oneplus/lib/preference/GenericInflater$Factory;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/GenericInflater;->mFactory:Lcom/oneplus/lib/preference/GenericInflater$Factory;

    goto :goto_0
.end method
