.class public Lcom/aps/o;
.super Ljava/lang/Object;
.source "Req.java"


# instance fields
.field public A:[B

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    .line 15
    iput-object v0, p0, Lcom/aps/o;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/aps/o;->b:S

    .line 20
    iput-object v1, p0, Lcom/aps/o;->c:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/aps/o;->d:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/aps/o;->e:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/aps/o;->f:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/aps/o;->g:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/aps/o;->h:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/aps/o;->i:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/aps/o;->j:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/aps/o;->k:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/aps/o;->l:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/aps/o;->m:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/aps/o;->n:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/aps/o;->o:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/aps/o;->p:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/aps/o;->q:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/aps/o;->r:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/aps/o;->s:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/aps/o;->t:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/aps/o;->u:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/aps/o;->v:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/aps/o;->w:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/aps/o;->x:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/aps/o;->y:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/aps/o;->z:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/aps/o;->A:[B

    .line 47
    iput-object v1, p0, Lcom/aps/o;->B:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/aps/o;->C:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/aps/o;->D:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/aps/o;->E:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 891
    iget-object v0, p0, Lcom/aps/o;->w:Ljava/lang/String;

    const-string/jumbo v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 892
    aget-object v0, v0, p2

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lac"

    .line 893
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cellid"

    .line 895
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "signal"

    .line 897
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 900
    return-object v0

    .line 894
    :cond_0
    aget-object v0, v0, v2

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 896
    aget-object v0, v0, v1

    return-object v0

    :cond_2
    const/4 v1, 0x2

    .line 898
    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x6

    const/4 v1, 0x0

    const-string/jumbo v0, ":"

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 845
    if-nez v0, :cond_1

    .line 849
    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    move v0, v1

    .line 850
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_2

    move-object v0, v2

    .line 854
    :goto_1
    new-array v3, v4, [B

    move v2, v1

    .line 855
    :goto_2
    array-length v4, v0

    if-lt v2, v4, :cond_3

    .line 865
    return-object v3

    .line 845
    :cond_1
    array-length v2, v0

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "0"

    .line 851
    aput-object v3, v2, v0

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_3
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_4

    .line 862
    :goto_3
    aget-object v4, v0, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 863
    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 860
    :cond_4
    aget-object v4, v0, v2

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_3
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 875
    iget-object v0, p0, Lcom/aps/o;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/aps/o;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/aps/o;->v:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 880
    iget-object v2, p0, Lcom/aps/o;->v:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    .line 876
    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 912
    iget-object v0, p0, Lcom/aps/o;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 915
    :goto_0
    iget-object v0, p0, Lcom/aps/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 918
    :goto_1
    iget-object v0, p0, Lcom/aps/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 921
    :goto_2
    iget-object v0, p0, Lcom/aps/o;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 924
    :goto_3
    iget-object v0, p0, Lcom/aps/o;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 927
    :goto_4
    iget-object v0, p0, Lcom/aps/o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 930
    :goto_5
    iget-object v0, p0, Lcom/aps/o;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 933
    :goto_6
    iget-object v0, p0, Lcom/aps/o;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 936
    :goto_7
    iget-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 938
    iget-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 941
    :cond_0
    :goto_8
    iget-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 943
    iget-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 946
    :cond_1
    :goto_9
    iget-object v0, p0, Lcom/aps/o;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 952
    iget-object v0, p0, Lcom/aps/o;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x41324f8000000000L    # 1200000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 953
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/o;->k:Ljava/lang/String;

    .line 955
    :goto_a
    iget-object v0, p0, Lcom/aps/o;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 958
    iget-object v0, p0, Lcom/aps/o;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 959
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/o;->l:Ljava/lang/String;

    .line 961
    :goto_b
    iget-object v0, p0, Lcom/aps/o;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 964
    :goto_c
    iget-object v0, p0, Lcom/aps/o;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 967
    :goto_d
    iget-object v0, p0, Lcom/aps/o;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 970
    :goto_e
    iget-object v0, p0, Lcom/aps/o;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 973
    :goto_f
    iget-object v0, p0, Lcom/aps/o;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 976
    :goto_10
    iget-object v0, p0, Lcom/aps/o;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 979
    :goto_11
    iget-object v0, p0, Lcom/aps/o;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 982
    :goto_12
    iget-object v0, p0, Lcom/aps/o;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 985
    :goto_13
    iget-object v0, p0, Lcom/aps/o;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 988
    :goto_14
    iget-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 990
    iget-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 993
    :cond_2
    :goto_15
    iget-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 995
    iget-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 998
    :cond_3
    :goto_16
    iget-object v0, p0, Lcom/aps/o;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1001
    :goto_17
    iget-object v0, p0, Lcom/aps/o;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1004
    :goto_18
    iget-object v0, p0, Lcom/aps/o;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1007
    :goto_19
    iget-object v0, p0, Lcom/aps/o;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1010
    :goto_1a
    iget-object v0, p0, Lcom/aps/o;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1013
    :goto_1b
    iget-object v0, p0, Lcom/aps/o;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1016
    :goto_1c
    iget-object v0, p0, Lcom/aps/o;->A:[B

    if-eqz v0, :cond_25

    .line 1019
    :goto_1d
    return-void

    :cond_4
    const-string/jumbo v0, ""

    .line 913
    iput-object v0, p0, Lcom/aps/o;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, ""

    .line 916
    iput-object v0, p0, Lcom/aps/o;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, ""

    .line 919
    iput-object v0, p0, Lcom/aps/o;->d:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, ""

    .line 922
    iput-object v0, p0, Lcom/aps/o;->e:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v0, ""

    .line 925
    iput-object v0, p0, Lcom/aps/o;->f:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v0, ""

    .line 928
    iput-object v0, p0, Lcom/aps/o;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v0, ""

    .line 931
    iput-object v0, p0, Lcom/aps/o;->h:Ljava/lang/String;

    goto/16 :goto_6

    :cond_b
    const-string/jumbo v0, ""

    .line 934
    iput-object v0, p0, Lcom/aps/o;->i:Ljava/lang/String;

    goto/16 :goto_7

    :cond_c
    const-string/jumbo v0, "0"

    .line 937
    iput-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    goto/16 :goto_8

    .line 938
    :cond_d
    iget-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    .line 939
    iput-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    goto/16 :goto_8

    :cond_e
    const-string/jumbo v0, "0"

    .line 942
    iput-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    goto/16 :goto_9

    .line 943
    :cond_f
    iget-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    .line 944
    iput-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    goto/16 :goto_9

    :cond_10
    const-string/jumbo v0, ""

    .line 947
    iput-object v0, p0, Lcom/aps/o;->k:Ljava/lang/String;

    goto/16 :goto_a

    :cond_11
    const-string/jumbo v0, ""

    .line 956
    iput-object v0, p0, Lcom/aps/o;->l:Ljava/lang/String;

    goto/16 :goto_b

    :cond_12
    const-string/jumbo v0, ""

    .line 962
    iput-object v0, p0, Lcom/aps/o;->m:Ljava/lang/String;

    goto/16 :goto_c

    :cond_13
    const-string/jumbo v0, ""

    .line 965
    iput-object v0, p0, Lcom/aps/o;->n:Ljava/lang/String;

    goto/16 :goto_d

    :cond_14
    const-string/jumbo v0, ""

    .line 968
    iput-object v0, p0, Lcom/aps/o;->o:Ljava/lang/String;

    goto/16 :goto_e

    :cond_15
    const-string/jumbo v0, ""

    .line 971
    iput-object v0, p0, Lcom/aps/o;->p:Ljava/lang/String;

    goto/16 :goto_f

    :cond_16
    const-string/jumbo v0, ""

    .line 974
    iput-object v0, p0, Lcom/aps/o;->q:Ljava/lang/String;

    goto/16 :goto_10

    :cond_17
    const-string/jumbo v0, ""

    .line 977
    iput-object v0, p0, Lcom/aps/o;->r:Ljava/lang/String;

    goto/16 :goto_11

    :cond_18
    const-string/jumbo v0, ""

    .line 980
    iput-object v0, p0, Lcom/aps/o;->B:Ljava/lang/String;

    goto/16 :goto_12

    :cond_19
    const-string/jumbo v0, ""

    .line 983
    iput-object v0, p0, Lcom/aps/o;->C:Ljava/lang/String;

    goto/16 :goto_13

    :cond_1a
    const-string/jumbo v0, ""

    .line 986
    iput-object v0, p0, Lcom/aps/o;->s:Ljava/lang/String;

    goto/16 :goto_14

    :cond_1b
    const-string/jumbo v0, "0"

    .line 989
    iput-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    goto/16 :goto_15

    .line 990
    :cond_1c
    iget-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "0"

    .line 991
    iput-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    goto/16 :goto_15

    :cond_1d
    const-string/jumbo v0, "0"

    .line 994
    iput-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    goto/16 :goto_16

    .line 995
    :cond_1e
    iget-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "0"

    .line 996
    iput-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    goto/16 :goto_16

    :cond_1f
    const-string/jumbo v0, ""

    .line 999
    iput-object v0, p0, Lcom/aps/o;->v:Ljava/lang/String;

    goto/16 :goto_17

    :cond_20
    const-string/jumbo v0, ""

    .line 1002
    iput-object v0, p0, Lcom/aps/o;->w:Ljava/lang/String;

    goto/16 :goto_18

    :cond_21
    const-string/jumbo v0, ""

    .line 1005
    iput-object v0, p0, Lcom/aps/o;->x:Ljava/lang/String;

    goto/16 :goto_19

    :cond_22
    const-string/jumbo v0, ""

    .line 1008
    iput-object v0, p0, Lcom/aps/o;->y:Ljava/lang/String;

    goto/16 :goto_1a

    :cond_23
    const-string/jumbo v0, ""

    .line 1011
    iput-object v0, p0, Lcom/aps/o;->E:Ljava/lang/String;

    goto/16 :goto_1b

    :cond_24
    const-string/jumbo v0, ""

    .line 1014
    iput-object v0, p0, Lcom/aps/o;->z:Ljava/lang/String;

    goto/16 :goto_1c

    .line 1017
    :cond_25
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/aps/o;->A:[B

    goto/16 :goto_1d
.end method


# virtual methods
.method public a()[B
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/16 v11, -0x80

    const/16 v10, 0x7f

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/aps/o;->b()V

    const/16 v0, 0xc00

    .line 100
    iget-object v2, p0, Lcom/aps/o;->A:[B

    if-nez v2, :cond_5

    .line 103
    :goto_0
    new-array v5, v0, [B

    .line 108
    iget-object v0, p0, Lcom/aps/o;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    .line 113
    iget-short v0, p0, Lcom/aps/o;->b:S

    invoke-static {v0}, Lcom/aps/q;->b(I)[B

    move-result-object v0

    .line 114
    array-length v2, v0

    invoke-static {v0, v1, v5, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/aps/o;->c:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 122
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 124
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    .line 138
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/aps/o;->d:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 139
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 141
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    array-length v2, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v0, v2

    .line 155
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/aps/o;->n:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 156
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 158
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    array-length v2, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v0, v2

    .line 172
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/aps/o;->e:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 173
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 175
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v0, v2

    .line 189
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/aps/o;->f:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 190
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 192
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length v2, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v0, v2

    .line 206
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/aps/o;->g:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 207
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 209
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    array-length v2, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v0, v2

    .line 223
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/aps/o;->r:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 224
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 226
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    array-length v2, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v0, v2

    .line 240
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/aps/o;->h:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 241
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 243
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    array-length v2, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    add-int/2addr v0, v2

    .line 257
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/aps/o;->o:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 258
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 260
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v2, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    add-int/2addr v0, v2

    .line 274
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/aps/o;->p:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 275
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 277
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v2, v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    add-int/2addr v0, v2

    .line 290
    :goto_a
    iget-object v2, p0, Lcom/aps/o;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 294
    iget-object v2, p0, Lcom/aps/o;->q:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/aps/o;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 295
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 297
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    array-length v2, v2

    add-int/2addr v0, v2

    .line 308
    :goto_b
    :try_start_a
    iget-object v2, p0, Lcom/aps/o;->B:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 309
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 311
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    array-length v2, v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    add-int/2addr v0, v2

    .line 325
    :goto_c
    :try_start_b
    iget-object v2, p0, Lcom/aps/o;->C:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 326
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 328
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    array-length v2, v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    add-int/2addr v0, v2

    .line 345
    :goto_d
    :try_start_c
    iget-object v2, p0, Lcom/aps/o;->s:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 346
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 348
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    array-length v2, v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    add-int/2addr v0, v2

    .line 361
    :goto_e
    iget-object v2, p0, Lcom/aps/o;->t:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    .line 366
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 371
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 384
    :goto_f
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/aps/o;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/aps/q;->a(I)[B

    move-result-object v2

    .line 386
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    array-length v2, v2

    add-int/2addr v0, v2

    .line 393
    :goto_10
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/aps/o;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/aps/q;->a(I)[B

    move-result-object v2

    .line 395
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    array-length v2, v2

    add-int/2addr v0, v2

    .line 402
    :goto_11
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 403
    :cond_2
    iget-object v2, p0, Lcom/aps/o;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 404
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    array-length v2, v2

    add-int/2addr v0, v2

    .line 411
    :goto_12
    iget-object v2, p0, Lcom/aps/o;->u:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    .line 413
    iget-object v2, p0, Lcom/aps/o;->u:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 503
    iget-object v2, p0, Lcom/aps/o;->u:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 577
    :cond_3
    :goto_13
    iget-object v2, p0, Lcom/aps/o;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    .line 581
    aput-byte v12, v5, v0

    .line 582
    add-int/lit8 v0, v0, 0x1

    .line 584
    :try_start_d
    iget-object v2, p0, Lcom/aps/o;->x:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 588
    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lcom/aps/o;->a(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v6, 0x0

    .line 589
    array-length v7, v3

    invoke-static {v3, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    array-length v3, v3
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e

    add-int/2addr v0, v3

    const/4 v3, 0x2

    .line 596
    :try_start_e
    aget-object v3, v2, v3

    const-string/jumbo v6, "GBK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 597
    array-length v6, v3

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 598
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x0

    .line 599
    array-length v7, v3

    invoke-static {v3, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    array-length v3, v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    add-int/2addr v0, v3

    :goto_14
    const/4 v3, 0x1

    .line 612
    :try_start_f
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 616
    if-gt v2, v10, :cond_15

    .line 618
    if-lt v2, v11, :cond_16

    .line 621
    :goto_15
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_e

    .line 622
    add-int/lit8 v0, v0, 0x1

    .line 647
    :goto_16
    iget-object v2, p0, Lcom/aps/o;->y:Ljava/lang/String;

    const-string/jumbo v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 648
    iget-object v2, p0, Lcom/aps/o;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 649
    :cond_4
    aput-byte v1, v5, v0

    .line 650
    add-int/lit8 v2, v0, 0x1

    move v0, v2

    .line 717
    :goto_17
    :try_start_10
    iget-object v2, p0, Lcom/aps/o;->z:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 718
    array-length v3, v2

    if-gt v3, v10, :cond_1d

    .line 721
    :goto_18
    if-eqz v2, :cond_1e

    .line 728
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 729
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 730
    array-length v4, v2

    invoke-static {v2, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    array-length v2, v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    add-int/2addr v0, v2

    .line 745
    :goto_19
    iget-object v2, p0, Lcom/aps/o;->A:[B

    if-nez v2, :cond_1f

    move v2, v1

    .line 748
    :goto_1a
    invoke-static {v2}, Lcom/aps/q;->b(I)[B

    move-result-object v3

    .line 749
    array-length v4, v3

    invoke-static {v3, v1, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    array-length v3, v3

    add-int/2addr v0, v3

    .line 752
    if-gtz v2, :cond_20

    .line 766
    :goto_1b
    new-array v2, v0, [B

    .line 767
    invoke-static {v5, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 773
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 774
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 779
    invoke-static {v4, v5}, Lcom/aps/q;->a(J)[B

    move-result-object v3

    .line 780
    array-length v4, v3

    add-int/2addr v4, v0

    new-array v4, v4, [B

    .line 781
    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    array-length v2, v3

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    array-length v0, v3

    .line 834
    return-object v4

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/aps/o;->A:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0xc00

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v2

    .line 131
    aput-byte v1, v5, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 150
    :catch_1
    move-exception v2

    .line 148
    aput-byte v1, v5, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 167
    :catch_2
    move-exception v2

    .line 165
    aput-byte v1, v5, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 184
    :catch_3
    move-exception v2

    .line 182
    aput-byte v1, v5, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 201
    :catch_4
    move-exception v2

    .line 199
    aput-byte v1, v5, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 218
    :catch_5
    move-exception v2

    .line 216
    aput-byte v1, v5, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 235
    :catch_6
    move-exception v2

    .line 233
    aput-byte v1, v5, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 252
    :catch_7
    move-exception v2

    .line 250
    aput-byte v1, v5, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 269
    :catch_8
    move-exception v2

    .line 267
    aput-byte v1, v5, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 286
    :catch_9
    move-exception v2

    .line 284
    aput-byte v1, v5, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 291
    :cond_6
    aput-byte v1, v5, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 320
    :catch_a
    move-exception v2

    .line 318
    aput-byte v1, v5, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 337
    :catch_b
    move-exception v2

    .line 335
    aput-byte v1, v5, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 357
    :catch_c
    move-exception v2

    .line 355
    aput-byte v1, v5, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 372
    :cond_7
    iget-object v2, p0, Lcom/aps/o;->D:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 384
    :cond_8
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_10

    .line 393
    :cond_9
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_11

    .line 402
    :cond_a
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_12

    :cond_b
    const-string/jumbo v2, "mcc"

    .line 420
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 429
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "mnc"

    .line 435
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 436
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "lac"

    .line 442
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 443
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "cellid"

    .line 449
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 450
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    array-length v2, v2

    add-int/2addr v2, v0

    const-string/jumbo v0, "signal"

    .line 459
    invoke-direct {p0, v0}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 460
    if-gt v0, v10, :cond_c

    .line 462
    if-lt v0, v11, :cond_d

    .line 465
    :goto_1c
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    .line 466
    add-int/lit8 v0, v2, 0x1

    .line 470
    iget-object v2, p0, Lcom/aps/o;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    .line 474
    iget-object v2, p0, Lcom/aps/o;->w:Ljava/lang/String;

    const-string/jumbo v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    .line 475
    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 476
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .line 477
    :goto_1d
    if-ge v2, v6, :cond_3

    const-string/jumbo v3, "lac"

    .line 481
    invoke-direct {p0, v3, v2}, Lcom/aps/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v3

    .line 482
    array-length v7, v3

    invoke-static {v3, v1, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    array-length v3, v3

    add-int/2addr v0, v3

    const-string/jumbo v3, "cellid"

    .line 487
    invoke-direct {p0, v3, v2}, Lcom/aps/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 488
    array-length v7, v3

    invoke-static {v3, v1, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    array-length v3, v3

    add-int/2addr v3, v0

    const-string/jumbo v0, "signal"

    .line 493
    invoke-direct {p0, v0, v2}, Lcom/aps/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 494
    if-gt v0, v10, :cond_f

    .line 496
    if-lt v0, v11, :cond_10

    .line 499
    :goto_1e
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    .line 500
    add-int/lit8 v3, v3, 0x1

    .line 477
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1d

    :cond_c
    move v0, v1

    .line 461
    goto :goto_1c

    :cond_d
    move v0, v1

    .line 463
    goto :goto_1c

    .line 471
    :cond_e
    aput-byte v1, v5, v0

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_f
    move v0, v1

    .line 495
    goto :goto_1e

    :cond_10
    move v0, v1

    .line 497
    goto :goto_1e

    :cond_11
    const-string/jumbo v2, "mcc"

    .line 510
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 519
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "sid"

    .line 525
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 526
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "nid"

    .line 532
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 533
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "bid"

    .line 539
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 540
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "lon"

    .line 546
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 547
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "lat"

    .line 553
    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 554
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    array-length v2, v2

    add-int/2addr v2, v0

    const-string/jumbo v0, "signal"

    .line 560
    invoke-direct {p0, v0}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 561
    if-gt v0, v10, :cond_12

    .line 563
    if-lt v0, v11, :cond_13

    .line 566
    :goto_1f
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    .line 567
    add-int/lit8 v0, v2, 0x1

    .line 571
    aput-byte v1, v5, v0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_12
    move v0, v1

    .line 562
    goto :goto_1f

    :cond_13
    move v0, v1

    .line 564
    goto :goto_1f

    .line 578
    :cond_14
    aput-byte v1, v5, v0

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    .line 608
    :catch_d
    move-exception v3

    .line 606
    const/4 v3, 0x0

    :try_start_11
    aput-byte v3, v5, v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_e

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14

    :cond_15
    move v2, v1

    .line 617
    goto/16 :goto_15

    :cond_16
    move v2, v1

    .line 619
    goto/16 :goto_15

    .line 642
    :catch_e
    move-exception v2

    const-string/jumbo v2, "00:00:00:00:00:00"

    .line 631
    invoke-direct {p0, v2}, Lcom/aps/o;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 632
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    array-length v2, v2

    add-int/2addr v0, v2

    .line 635
    aput-byte v1, v5, v0

    .line 636
    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v2, "0"

    .line 640
    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    .line 648
    :cond_17
    array-length v2, v6

    if-eqz v2, :cond_4

    .line 652
    array-length v2, v6

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v0, v1

    .line 655
    :goto_20
    array-length v3, v6

    if-lt v0, v3, :cond_19

    .line 702
    iget-object v0, p0, Lcom/aps/o;->E:Ljava/lang/String;

    if-nez v0, :cond_1c

    :cond_18
    move v0, v2

    goto/16 :goto_17

    .line 656
    :cond_19
    aget-object v3, v6, v0

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 660
    aget-object v7, v3, v1

    invoke-direct {p0, v7}, Lcom/aps/o;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 661
    array-length v8, v7

    invoke-static {v7, v1, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    array-length v7, v7

    add-int/2addr v2, v7

    const/4 v7, 0x2

    .line 668
    :try_start_12
    aget-object v7, v3, v7

    const-string/jumbo v8, "GBK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 669
    array-length v8, v7

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    .line 670
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    .line 671
    array-length v9, v7

    invoke-static {v7, v8, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    array-length v7, v7
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    add-int/2addr v2, v7

    .line 687
    :goto_21
    aget-object v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 688
    if-gt v3, v10, :cond_1a

    .line 690
    if-lt v3, v11, :cond_1b

    .line 693
    :goto_22
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 694
    add-int/lit8 v2, v2, 0x1

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 680
    :catch_f
    move-exception v7

    .line 678
    aput-byte v1, v5, v2

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_1a
    move v3, v1

    .line 689
    goto :goto_22

    :cond_1b
    move v3, v1

    .line 691
    goto :goto_22

    .line 702
    :cond_1c
    iget-object v0, p0, Lcom/aps/o;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 703
    iget-object v0, p0, Lcom/aps/o;->E:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/aps/q;->b(I)[B

    move-result-object v0

    .line 704
    array-length v3, v0

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    array-length v0, v0

    add-int/2addr v2, v0

    move v0, v2

    goto/16 :goto_17

    :cond_1d
    move-object v2, v4

    .line 719
    goto/16 :goto_18

    .line 725
    :cond_1e
    const/4 v2, 0x0

    :try_start_13
    aput-byte v2, v5, v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    .line 740
    :catch_10
    move-exception v2

    .line 738
    aput-byte v1, v5, v0

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    .line 746
    :cond_1f
    iget-object v2, p0, Lcom/aps/o;->A:[B

    array-length v2, v2

    goto/16 :goto_1a

    .line 753
    :cond_20
    iget-object v2, p0, Lcom/aps/o;->A:[B

    iget-object v3, p0, Lcom/aps/o;->A:[B

    array-length v3, v3

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    iget-object v2, p0, Lcom/aps/o;->A:[B

    array-length v2, v2

    add-int/2addr v0, v2

    goto/16 :goto_1b
.end method
