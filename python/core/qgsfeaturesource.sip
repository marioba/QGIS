/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsfeaturesource.h                                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsFeatureSource
{
%Docstring
 An interface for objects which provide features via a getFeatures method.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsfeaturesource.h"
%End
  public:

    virtual ~QgsFeatureSource();

    virtual QgsFeatureIterator getFeatures( const QgsFeatureRequest &request = QgsFeatureRequest() ) const = 0;
%Docstring
 Returns an iterator for the features in the source.
 An optional ``request`` can be used to optimise the returned
 iterator, eg by restricting the returned attributes or geometry.
 :rtype: QgsFeatureIterator
%End

    virtual QString sourceName() const = 0;
%Docstring
 Returns a friendly display name for the source. The returned value can be an empty string.
 :rtype: str
%End

    virtual QgsCoordinateReferenceSystem sourceCrs() const = 0;
%Docstring
 Returns the coordinate reference system for features in the source.
 :rtype: QgsCoordinateReferenceSystem
%End

    virtual QgsFields fields() const = 0;
%Docstring
 Returns the fields associated with features in the source.
 :rtype: QgsFields
%End

    virtual QgsWkbTypes::Type wkbType() const = 0;
%Docstring
 Returns the geometry type for features returned by this source.
 :rtype: QgsWkbTypes.Type
%End


    int __len__() const;
%Docstring
 Returns the number of features contained in the source, or -1
 if the feature count is unknown.
 :rtype: int
%End
%MethodCode
    sipRes = sipCpp->featureCount();
%End

    virtual long featureCount() const = 0;
%Docstring
 Returns the number of features contained in the source, or -1
 if the feature count is unknown.
 :rtype: long
%End

    virtual QSet<QVariant> uniqueValues( int fieldIndex, int limit = -1 ) const;
%Docstring
 Returns the set of unique values contained within the specified ``fieldIndex`` from this source.
 If specified, the ``limit`` option can be used to limit the number of returned values.
 The base class implementation uses a non-optimised approach of looping through
 all features in the source.
.. seealso:: minimumValue()
.. seealso:: maximumValue()
 :rtype: set of QVariant
%End

    virtual QVariant minimumValue( int fieldIndex ) const;
%Docstring
 Returns the minimum value for an attribute column or an invalid variant in case of error.
 The base class implementation uses a non-optimised approach of looping through
 all features in the source.
.. seealso:: maximumValue()
.. seealso:: uniqueValues()
 :rtype: QVariant
%End

    virtual QVariant maximumValue( int fieldIndex ) const;
%Docstring
 Returns the maximum value for an attribute column or an invalid variant in case of error.
 The base class implementation uses a non-optimised approach of looping through
 all features in the source.
.. seealso:: minimumValue()
.. seealso:: uniqueValues()
 :rtype: QVariant
%End

    virtual QgsRectangle sourceExtent() const;
%Docstring
 Returns the extent of all geometries from the source.
 The base class implementation uses a non-optimised approach of looping through
 all features in the source.
 :rtype: QgsRectangle
%End

    virtual QgsFeatureIds allFeatureIds() const;
%Docstring
 Returns a list of all feature IDs for features present in the source.
 :rtype: QgsFeatureIds
%End

};


/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsfeaturesource.h                                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
